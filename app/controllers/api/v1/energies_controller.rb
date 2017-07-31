class Api::V1::EnergiesController < ApplicationController
  def index
    @energies = []
    measurements = Energy.uniq.pluck(:measurement)
    locations = Energy.uniq.pluck(:location)
    locations.each do |location|
      measurements.each do |measurement|
        if Energy.find_by(location: location, measurement: measurement)
          energy = Energy.find_by(location: location, measurement: measurement)

          @energies.push({
            location: location,
            year: energy.year,
            amount: energy.amount,
            measurement: measurement
          })
        end
      end
    end
    render 'index.json.jbuilder'
  end
end
