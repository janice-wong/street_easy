class BuildingsController < ApplicationController
  def index
    @locations = Energy.uniq.pluck(:location)
    @measurements = Energy.uniq.pluck(:measurement)
    if params[:year]
      @year = params[:year]
    else
      @year = "2008"
    end
  end
end
