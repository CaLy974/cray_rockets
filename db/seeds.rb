# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Rocket.destroy_all
User.destroy_all

user1 = User.create!(email: "toto@gmail.com", password: "tototo")

file = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669200861/Rockets/Fus%C3%A9e8_whpgb1.png")
rocket1 = Rocket.create!(name: "Big mama", user: user1, capacity: "6", country: "France", town: "Toulon", price: 12_000_00)

rocket1.photo.attach(io: file, filename: "rocket1.png", content_type: "image/png")
rocket1.save
