class AddPassengerToBookings < ActiveRecord::Migration[6.1]
  def change
    add_reference :passengers, :booking, index: true
    add_reference :flights, :booking, index: true
  end
end
