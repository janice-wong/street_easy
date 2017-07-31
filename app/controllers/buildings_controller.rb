class BuildingsController < ApplicationController
  def index
    @locations = Energy.uniq.pluck(:location)
    @measurements = Energy.uniq.pluck(:measurement)
    @years = ['2008', '2009', '2010', '2011', '2012']
    if params[:year]
      @year = params[:year]
    else
      @year = "2008"
    end
  end
end
