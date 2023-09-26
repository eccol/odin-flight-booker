class BookingsController < ApplicationController
  def new
    @booking = Flight.find(params[:result_id]).bookings.new(num_passengers: params[:passenger_count])
  end
end
