class FixAirportReferencesInFlight < ActiveRecord::Migration[7.0]
  def change
    create_table :arrival_airports
    create_table :departure_airports
    remove_foreign_key :flights, :arrival_airports
    remove_foreign_key :flights, :departure_airports
    drop_table :arrival_airports
    drop_table :departure_airports
  end
end
