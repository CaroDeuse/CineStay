# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "open-uri"

puts "Cleaning DB ..."
Villa.destroy_all
User.destroy_all
puts "DB cleaned"

user = User.new(email: "Edgar@yopmail.com", password: "123456", firstname: "Edgar", lastname: "Grospiron")

file = URI.open("https://image.tmdb.org/t/p/original/qJ2tW6WMUDux911r6m7haRef0WH.jpg")
villa = Villa.new(name: "Gotham Loft", address: "1007 Mountain Drive, Gotham City, USA", movie_genre: "Action", description: "Located in the heart of the city, this luxurious penthouse offers an urban retreat with dark, elegant interiors and a rooftop terrace overlooking Gotham.", price_per_night: 230, guests_number: 12)
villa.photo.attach(io: file, filename: "Gotham.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

file = URI.open("https://miro.medium.com/v2/resize:fit:1400/format:webp/0*Ln0064ci-IQNC7f8")
villa = Villa.new(name: "The Shire Retreat", address: "1 Bagshot Row, Hobbiton, Middle-earth", movie_genre: "Fantasy", description: "Nestled in the heart of a lush, green landscape, this cozy Hobbit hole offers a blend of rustic charm and modern comforts. Features include circular doors, a vegetable garden, and breathtaking countryside views.", price_per_night: 50, guests_number: 20)
villa.photo.attach(io: file, filename: "shire.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

file = URI.open("https://images-prod.dazeddigital.com/1362/azure/dazed-prod/1330/5/1335508.jpeg")
villa = Villa.new(name: "Pandoran Paradise", address: "Unit 5, Hallelujah Mountains, Pandora", movie_genre: "Sci-Fi", description: "An eco-friendly villa nestled in a lush, alien forest. Features bioluminescent lighting, stunning flora, and immersive virtual reality experiences of Pandora.", price_per_night: 500, guests_number: 3)
villa.photo.attach(io: file, filename: "pandora.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

puts "Three villas and one user created"
