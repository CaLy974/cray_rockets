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

user1 = User.create!(email: "toto@gmail.com", password: "tototo", name: "Toto")
user2 = User.create!(email: "neil.armstrong@gmail.com", password: "neilarmstrong", name: "Neil")
user3 = User.create!(email: "rude_gambler@gmail.com", password: "rudegambler", name: "Rude")
user4 = User.create!(email: "dede@gmail.com", password: "dedede", name: "Dede")
user5 = User.create!(email: "nasa@gmail.com", password: "nasanasa", name: "Nasa")

file = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669200839/Rockets/Fus%C3%A9e6_ndhomg.png")
rocket0 = Rocket.new(name: "Big mama", user: user1, capacity: "6", country: "France", town: "Toulon", price: 12_000_00)
rocket0.photo.attach(io: file, filename: "rocket0.png", content_type: "image/png")
rocket0.save

file1 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669200861/Rockets/Fus%C3%A9e8_whpgb1.png")
rocket1 = Rocket.new(name: "Youhou space", user: user1, capacity: "6", country: "France", town: "Toulon", price: 15_000_00)
rocket1.photo.attach(io: file1, filename: "rocket1.png", content_type: "image/png")
rocket1.save

file2 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669200826/Rockets/Fus%C3%A9e5_icrod8.png")
rocket2 = Rocket.new(name: "Arianne", user: user2, capacity: "4", country: "United States - Arkansas", town: "Little Rock", price: 65_000_000)
rocket2.photo.attach(io: file2, filename: "rocket2.png", content_type: "image/png")
rocket2.save

file3 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669200850/Rockets/Fus%C3%A9e7_atobct.png")
rocket3 = Rocket.new(name: "MarsAttack", user: user2, capacity: "5", country: "United States - Vermont", town: "Burlington", price: 35_000_000)
rocket3.photo.attach(io: file3, filename: "rocket3.png", content_type: "image/png")
rocket3.save

file4 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669200780/Rockets/Fus%C3%A9e1_pqaaf9.png")
rocket4 = Rocket.new(name: "Marguerite", user: user3, capacity: "2", country: "France", town: "Cuisery", price: 10_000_000)
rocket4.photo.attach(io: file4, filename: "rocket4.png", content_type: "image/png")
rocket4.save

file5 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669200804/Rockets/Fus%C3%A9e3_c18bvi.png")
rocket5 = Rocket.new(name: "Santa", user: user3, capacity: "5", country: "France", town: "Brest", price: 45_000_000)
rocket5.photo.attach(io: file5, filename: "rocket5.png", content_type: "image/png")
rocket5.save

file6 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669200814/Rockets/Fus%C3%A9e4_pkwhns.png")
rocket6 = Rocket.new(name: "Rosa", user: user4, capacity: "3", country: "Espana", town: "Barcelona", price: 4_000_000)
rocket6.photo.attach(io: file6, filename: "rocket6.png", content_type: "image/png")
rocket6.save

file7 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669289196/Rockets/Fus%C3%A9e10_q9gxbe.jpg")
rocket7 = Rocket.new(name: "Grandiosa", user: user4, capacity: "4", country: "Espana", town: "Madrid", price: 25_000_000)
rocket7.photo.attach(io: file7, filename: "rocket7.png", content_type: "image/png")
rocket7.save

file8 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669289207/Rockets/Fus%C3%A9e12_xr74qx.jpg")
rocket8 = Rocket.new(name: "Pralina", user: user5, capacity: "6", country: "Allemagne", town: "Berlin", price: 45_000_000)
rocket8.photo.attach(io: file8, filename: "rocket8.png", content_type: "image/png")
rocket8.save

file9 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669289187/Rockets/Fus%C3%A9e11_j3drur.jpg")
rocket9 = Rocket.new(name: "Samba", user: user5, capacity: "7", country: "Angleterre", town: "Londres", price: 50_000_000)
rocket9.photo.attach(io: file9, filename: "rocket7.png", content_type: "image/png")
rocket9.save

file11 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669289439/Rockets/images_cndwoe.jpg")
rocket11 = Rocket.new(name: "Rolala", user: user5, capacity: "5", country: "Italie", town: "Rome", price: 40_000_000)
rocket11.photo.attach(io: file11, filename: "rocket10.png", content_type: "image/png")
rocket11.save

file10 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669289449/Rockets/images_1_pnomqx.jpg")
rocket10 = Rocket.new(name: "King rocket", user: user5, capacity: "8", country: "Belgique", town: "Bruxelles", price: 80_000_000)
rocket10.photo.attach(io: file10, filename: "rocket10.png", content_type: "image/png")
rocket10.save
