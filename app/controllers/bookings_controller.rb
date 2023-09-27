class BookingsController < ApplicationController
  def new
    @booking = Flight.find(params[:result_id]).bookings.new(num_passengers: params[:passenger_count])
    @booking.num_passengers.times do |i|
      @booking.passengers.build
    end
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to @booking
    else
      flash.now[:error] = "Could not create booking."
      render :new, status: :unprocessable_entity
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :email])
  end
end
