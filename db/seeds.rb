Energy.all.destroy_all

buildings = Unirest.get("https://data.cityofnewyork.us/resource/dnpn-ts5d.json").body
buildings.delete_if { |building| building.empty? }

buildings.each do |building|
  years = {
    "year_1" => ["2008", 0],
    "year_2" => ["2009", 0],
    "year_3" => ["2010", 0],
    "year_4" => ["2011", 0],
    "year_5" => ["2012", 0]
  }

  building.each do |key, value|
    years.each do |year, array|
      array[1] += value.to_f if key[4..5] == array[0][2..3]
    end
  end

  years.each do |year, array|
    Energy.create(
      location: building["location_1_location"],
      measurement: building["measurement"],
      year: array[0],
      amount: array[1]
    )
  end
end