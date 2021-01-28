class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport"
  belongs_to :to_airport, class_name: "Airport"
  # belongs_to :booking

  def date
    start_time.strftime("%m/%d/%Y")
  end

  def info
    "Flight ##{id} - From #{from_airport.code} To #{to_airport.code} - #{duration} minutes on #{date}"
  end
end
