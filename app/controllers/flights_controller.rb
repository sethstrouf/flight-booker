class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |a| [a.code, a.id]}
    @flight_date_options = Flight.all.map { |f| f.date }
    @available_flights = search_flights
  end

  private

  def search_flights
    flights = Flight.all.select do |f|
      f.date == params[:start_time] &&
      f.from_airport.id == params[:from_airport_id].to_i &&
      f.to_airport.id == params[:to_airport_id].to_i
    end
  end
end
