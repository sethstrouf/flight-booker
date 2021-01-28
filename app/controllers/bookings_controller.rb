class BookingsController < ApplicationController
  def new
    @flight_id = params[:flight_id]
    @num_passengers = params[:num_passengers].to_i
    @booking = Booking.new
    @num_passengers.times { @booking.passengers.build }
  end

  def create
    # @booking = Booking.new
    # flight = Flight.find(booking_params[:flight_id].to_i)
    # @booking.flight = flight
    # passenger = Passenger.new(booking_params[:passenger])
    # passenger.booking = @booking
    # passenger.save

    @booking = Booking.new
    flight = Flight.find(booking_params[:flight_id].to_i)
    @booking.flight = flight
    make_passengers

    if @booking.save
      redirect_to @booking
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def make_passengers
    booking_params[:passengers_attributes].each do |p_a|
      p = Passenger.new(name: p_a[1][:name], email: p_a[1][:email])
      p.booking = @booking
      p.save
    end
  end

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
