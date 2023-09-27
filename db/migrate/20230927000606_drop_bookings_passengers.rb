class DropBookingsPassengers < ActiveRecord::Migration[7.0]
  def change
    drop_table :bookings_passengers
    add_reference :passengers, :booking
  end
end
