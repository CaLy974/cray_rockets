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
user2 = User.create!(email: "neil.armstrong@gmail.com", password: "neilarmstrong")
user3 = User.create!(email: "rude_gambler@gmail.com", password: "rudegambler")
user4 = User.create!(email: "dede@gmail.com", password: "dedede")
user5 = User.create!(email: "nasa@gmail.com", password: "nasanasa")

file = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669208704/development/wh9r7tu7v3t2gvh395cjpq7az658.png")
rocket0 = Rocket.create!(name: "Big mama", user: user1, capacity: "6", country: "France", town: "Toulon", price: 12_000_00)
rocket0.photo.attach(io: file, filename: "rocket0.png", content_type: "image/png")
rocket0.save

file = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669204346/development/e031nfxi75qnwd20z30okae1biiq.png")
rocket1 = Rocket.create!(name: "Youhou space", user: user1, capacity: "6", country: "France", town: "Toulon", price: 15_000_00)
rocket1.photo.attach(io: file, filename: "rocket1.png", content_type: "image/png")
rocket1.save

file = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669202621/development/nldacr4hoyjm0add6umwhbrx2kod.png")
rocket2 = Rocket.create!(name: "Arianne", user: user2, capacity: "4", country: "United States - Arkansas", town: "Little Rock", price: 65_000_000)
rocket2.photo.attach(io: file, filename: "rocket2.png", content_type: "image/png")
rocket2.save

file = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669200850/Rockets/Fus%C3%A9e7_atobct.png")
rocket3 = Rocket.create!(name: "MarsAttack", user: user2, capacity: "5", country: "United States - Vermont", town: "Burlington", price: 35_000_000)
rocket3.photo.attach(io: file, filename: "rocket3.png", content_type: "image/png")
rocket3.save

file = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669200780/Rockets/Fus%C3%A9e1_pqaaf9.png")
rocket4 = Rocket.create!(name: "Marguerite", user: user3, capacity: "2", country: "France", town: "Cuisery", price: 10_000_000)
rocket4.photo.attach(io: file, filename: "rocket4.png", content_type: "image/png")
rocket4.save

file = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669200804/Rockets/Fus%C3%A9e3_c18bvi.png")
rocket5 = Rocket.create!(name: "Santa", user: user3, capacity: "5", country: "France", town: "Brest", price: 45_000_000)
rocket5.photo.attach(io: file, filename: "rocket5.png", content_type: "image/png")
rocket5.save

file = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669200861/Rockets/Fus%C3%A9e8_whpgb1.png")
rocket6 = Rocket.create!(name: "Rosa", user: user4, capacity: "3", country: "Espana", town: "Barcelona", price: 4_000_000)
rocket6.photo.attach(io: file, filename: "rocket6.png", content_type: "image/png")
rocket6.save

file = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669289196/Rockets/Fus%C3%A9e10_q9gxbe.jpg")
rocket7 = Rocket.create!(name: "Rosa", user: user4, capacity: "4", country: "Espana", town: "Madrid", price: 25_000_000)
rocket7.photo.attach(io: file, filename: "rocket7.png", content_type: "image/png")
rocket7.save

file = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669289207/Rockets/Fus%C3%A9e12_xr74qx.jpg")
rocket8 = Rocket.create!(name: "Rosa", user: user5, capacity: "6", country: "Allemagne", town: "Berlin", price: 45_000_000)
rocket8.photo.attach(io: file, filename: "rocket8.png", content_type: "image/png")
rocket8.save

file = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669289187/Rockets/Fus%C3%A9e11_j3drur.jpg")
rocket9 = Rocket.create!(name: "Rosa", user: user5, capacity: "7", country: "Angleterre", town: "Londres", price: 50_000_000)
rocket9.photo.attach(io: file, filename: "rocket7.png", content_type: "image/png")
rocket9.save

file = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669289449/Rockets/images_1_pnomqx.jpg")
rocket10 = Rocket.create!(name: "Rosa", user: user5, capacity: "8", country: "Belgique", town: "Bruxelles", price: 80_000_000)
rocket10.photo.attach(io: file, filename: "rocket10.png", content_type: "image/png")
rocket10.save

file = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669289439/Rockets/images_cndwoe.jpg")
rocket11 = Rocket.create!(name: "Rosa", user: user5, capacity: "5", country: "Italie", town: "Rome", price: 40_000_000)
rocket11.photo.attach(io: file, filename: "rocket10.png", content_type: "image/png")
rocket11.save
