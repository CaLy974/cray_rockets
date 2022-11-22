# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.destroy_all
Rocket.destroy_all

user1 = User.create!(email: "toto@gmail.com", password: "tototo")

rocket1 = Rocket.create!(name:"big mama", user: user1, capacity:"6",  country:"France", town:"Toulon", price:12000.00)
