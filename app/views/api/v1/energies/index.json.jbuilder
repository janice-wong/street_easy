json.array! @energies.each do |energy|
  json.location energy[:location]
  json.year energy[:year]
  json.measurement energy[:measurement]
  json.amount energy[:amount]
end