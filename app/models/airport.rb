class Airport < ApplicationRecord
  has_many :departing_flights, foreign_key: "departure_airport_id", class_name: "Airport"
  has_many :arriving_flights, foreign_key: "arrival_airport_id", class_name: "Airport"
end
