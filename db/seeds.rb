# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.delete_all
Flight.delete_all

mco = Airport.create(code: "MCO")
lga = Airport.create(code: "LGA")
sfo = Airport.create(code: "SFO")

Flight.create(departure_airport: mco, arrival_airport: lga)