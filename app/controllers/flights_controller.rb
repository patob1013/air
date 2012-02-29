class FlightsController < ApplicationController
  
  
  def index
    @flights = Flight.order('departs_at asc').page(params[:page]).per(8)
  end
  
  def show
    @flight = Flight.find(params[:id])
  end
  
end