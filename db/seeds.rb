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
user2 = User.create!(email: "neil.armstrong@gmail.com", password: "neilarmstrong")
user3 = User.create!(email: "rude_gambler@gmail.com", password: "rudegambler")
user4 = User.create!(email: "dede@gmail.com", password: "dedede")




rocket1 = Rocket.create!(name: "Big Mama", user: user1, capacity: "6", country: "France", town: "Toulon", price: 12_000_00)
rocket2 = Rocket.create!(name: "Arianne", user: user2, capacity: "4", country: "United States - Arkansas", town: "Little Rock", price: 65_000_000)
rocket3 = Rocket.create!(name: "MarsAttack", user: user3, capacity: "5", country: "United States - Vermont", town: "Burlington", price: 35_000_000)
rocket4 = Rocket.create!(name: "Marguerite", user: user4, capacity: "2", country: "France", town: "Cuisery", price: 10_000_000)
rocket5 = Rocket.create!(name: "Santa", user: user3, capacity: "5", country: "United States - Vermont", town: "Burlington", price: 45_000_000)
