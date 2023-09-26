class FlightsController < ApplicationController
  def index
    @airports = Airport.pluck(:code)
    @dates = Flight.pluck(:date)

    @results = Flight.where(search_params) if params.has_key?(:departure_airport)
  end

  private
  def search_params
    {departure_airport: Airport.find_by(code: params[:departure_airport]),
    arrival_airport: Airport.find_by(code: params[:arrival_airport]),
    date: params[:date]}
  end
end
