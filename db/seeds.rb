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

# user = User.new(email: "Edgar@yopmail.com", password: "123456", firstname: "Edgar", lastname: "Grospiron")

# file = URI.open("https://image.tmdb.org/t/p/original/qJ2tW6WMUDux911r6m7haRef0WH.jpg")
# villa = Villa.new(name: "Gotham Loft", address: "1007 Mountain Drive, Gotham City, USA", movie_genre: "Action", description: "Located in the heart of the city, this luxurious penthouse offers an urban retreat with dark, elegant interiors and a rooftop terrace overlooking Gotham.", price_per_night: 230, guests_number: 12)
# villa.photo.attach(io: file, filename: "Gotham.jpg", content_type: "image/jpg")
# villa.user = user
# villa.save!

# file = URI.open("https://miro.medium.com/v2/resize:fit:1400/format:webp/0*Ln0064ci-IQNC7f8")
# villa = Villa.new(name: "The Shire Retreat", address: "1 Bagshot Row, Hobbiton, Middle-earth", movie_genre: "Fantasy", description: "Nestled in the heart of a lush, green landscape, this cozy Hobbit hole offers a blend of rustic charm and modern comforts. Features include circular doors, a vegetable garden, and breathtaking countryside views.", price_per_night: 50, guests_number: 20)
# villa.photo.attach(io: file, filename: "shire.jpg", content_type: "image/jpg")
# villa.user = user
# villa.save!

# file = URI.open("https://images-prod.dazeddigital.com/1362/azure/dazed-prod/1330/5/1335508.jpeg")
# villa = Villa.new(name: "Pandoran Paradise", address: "Unit 5, Hallelujah Mountains, Pandora", movie_genre: "Sci-Fi", description: "An eco-friendly villa nestled in a lush, alien forest. Features bioluminescent lighting, stunning flora, and immersive virtual reality experiences of Pandora.", price_per_night: 500, guests_number: 3)
# villa.photo.attach(io: file, filename: "pandora.jpg", content_type: "image/jpg")
# villa.user = user
# villa.save!

puts "Creating owners and villas; this can take up 1-2 minutes ..."

user = User.new(email: "martin@yopmail.com", password: "123456", firstname: "Martin", lastname: "Scorsese")

# Villa 1
file = URI.open("https://miro.medium.com/v2/resize:fit:1400/format:webp/0*Ln0064ci-IQNC7f8")
villa = Villa.new(name: "The Shire Retreat", address: "1 Bagshot Row, Hobbiton, New Zealand", movie_genre: "Fantasy", description: "Nestled in the heart of a lush, green landscape, this cozy Hobbit hole offers a blend of rustic charm and modern comforts, perfect for fans looking to live like a Hobbit.", price_per_night: 220, guests_number: 4)
villa.photo.attach(io: file, filename: "shire.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

# Villa 2
file = URI.open("https://cdna.artstation.com/p/assets/images/images/009/981/268/large/phil-saunders-calalautner-houseweb.jpg")
villa = Villa.new(name: "Stark Modernism", address: "10880 Malibu Point, Malibu, CA, USA", movie_genre: "Action", description: "A sleek, state-of-the-art villa perched on a cliffside, offering panoramic ocean views and equipped with the latest technology.", price_per_night: 450, guests_number: 6)
villa.photo.attach(io: file, filename: "stark.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

# Villa 3 - Inspired by "Jaws"
file = URI.open("https://media.cnn.com/api/v1/images/stellar/prod/130816101217-jaws.jpg")
villa = Villa.new(name: "Amity Island Cottage", address: "12 Brody Lane, Martha's Vineyard, MA, USA", movie_genre: "Thriller", description: "A charming seaside cottage with direct beach access, perfect for those who love the ocean's beauty and don't mind its mysteries.", price_per_night: 320, guests_number: 5)
villa.photo.attach(io: file, filename: "jaws.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

# Villa 4 - Inspired by "Avatar"
file = URI.open("https://images-prod.dazeddigital.com/1362/azure/dazed-prod/1330/5/1335508.jpeg")
villa = Villa.new(name: "Pandoran Paradise", address: "Hallelujah Mountains, Zhangjiajie, Hunan, China", movie_genre: "Sci-Fi", description: "An eco-friendly villa nestled in a lush, alien forest with stunning flora and immersive virtual reality experiences of Pandora.", price_per_night: 380, guests_number: 4)
villa.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

# Villa 5 - Inspired by "Harry Potter"
file = URI.open("https://img.theweek.in/content/dam/week/webworld/feature/lifestyle/2017/august/hogwarts-school.jpg")
villa = Villa.new(name: "Hogwarts Tower Suite", address: "Alnwick Castle, Alnwick NE66 1NQ, UK", movie_genre: "Fantasy", description: "A magical suite located in a castle tower, complete with enchanted ceilings, spell books, and a cozy fireplace.", price_per_night: 300, guests_number: 8)
villa.photo.attach(io: file, filename: "harry.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

# Villa 6 - Inspired by "The Shining"
file = URI.open("https://movie-locations.com/movies/s/Shining-Timberline-Lodge.jpg")
villa = Villa.new(name: "The Overlook Cabin", address: "333 East Wonderview Avenue, Estes Park, CO, USA", movie_genre: "Horror", description: "A secluded mountain retreat with breathtaking views and an eerie charm, perfect for those who seek solitude.", price_per_night: 270, guests_number: 4)
villa.photo.attach(io: file, filename: "shining.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

# Villa 7 - Inspired by "Jurassic Park"
file = URI.open("https://i.ibb.co/xhJF3Dz/21.jpg")
villa = Villa.new(name: "Jurassic Jungle Lodge", address: "Isla Nublar, Costa Rica", movie_genre: "Adventure", description: "A thrilling escape located in a lush, prehistoric jungle with guided tours and dinosaur sightings.", price_per_night: 340, guests_number: 6)
villa.photo.attach(io: file, filename: "jurassic.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

user = User.new(email: "quentin@yopmail.com", password: "123456", firstname: "Quentin", lastname: "Tarantino")

# Villa 10 - Inspired by "Interstellar"
file = URI.open("https://static.wikia.nocookie.net/concord/images/f/fb/Interstellar_spaceship.jpg")
villa = Villa.new(name: "Cosmic Horizon Retreat", address: "International Space Station, Low Earth Orbit", movie_genre: "Sci-Fi", description: "Embark on a journey beyond the stars at this interstellar villa, offering unparalleled views of distant galaxies and celestial phenomena.", price_per_night: 1000, guests_number: 2)
villa.photo.attach(io: file, filename: "interstellar.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

# Villa 11 - Inspired by "The lord of the rings"
file = URI.open("https://wallpapercave.com/wp/wp1947157.jpg")
villa = Villa.new(name: "Elven Enclave", address: "Fiordland National Park, Te Anau, New Zealand", movie_genre: "Fantasy", description: "An ethereal retreat nestled in ancient forests, inspired by the elegance and tranquility of Elven architecture.", price_per_night: 280, guests_number: 4)
villa.photo.attach(io: file, filename: "rivendell.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

# Villa 12 - Inspired by "Ninja Assassin"
file = URI.open("https://www.peteryee.my/graphics/inspiringwell/largeorph.jpg")
villa = Villa.new(name: "Ninja Dojo Retreat", address: "1 Chome-1-1 Yokoami, Sumida City, Tokyo, Japan", movie_genre: "Action", description: "A traditional Japanese dojo turned into a serene retreat, offering martial arts training and Zen gardens for meditation.", price_per_night: 220, guests_number: 6)
villa.photo.attach(io: file, filename: "ninja.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

# # Villa 13 - Inspired by "James Bond"
# file = URI.open("https://images-prod.dazeddigital.com/1362/azure/dazed-prod/1330/5/1335508.jpeg")
# villa = Villa.new(name: "Spy Hideaway", address: "25 Wellington Street, London, WC2E 7DA, UK", movie_genre: "Thriller", description: "A luxurious and secretive London flat equipped with high-tech gadgets and a perfect base for urban espionage adventures.", price_per_night: 400, guests_number: 2)
# villa.photo.attach(io: file, filename: "bond.jpg", content_type: "image/jpg")
# villa.user = user
# villa.save!

# Villa 14 - Inspired by "The Good, The Bad and The Ugly"
file = URI.open("https://hips.hearstapps.com/clv.h-cdn.co/assets/17/14/2048x1152/hd-aspect-1491511467-mane-street-2.jpg")
villa = Villa.new(name: "Wild West Ranch", address: "1 Old West Town, Tombstone, AZ, USA", movie_genre: "Western", description: "Step back in time with this authentic ranch experience, complete with horseback riding and cowboy cookouts.", price_per_night: 180, guests_number: 8)
villa.photo.attach(io: file, filename: "shire.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

# Villa 15 - Inspired by "Star Wars"
file = URI.open("https://i2-prod.mirror.co.uk/incoming/article6681133.ece/ALTERNATES/s1200d/PAY-Millenium-Falcon-mansion.jpg")
villa = Villa.new(name: "Millenium Falcon Mansion", address: "Space Launch Complex 40, Cape Canaveral, FL, USA", movie_genre: "Sci-Fi", description: "A futuristic villa offering a gateway to the stars, with virtual space tours and zero-gravity simulators.", price_per_night: 500, guests_number: 4)
villa.photo.attach(io: file, filename: "star_wars.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

# Villa 16 - Inspired by "Jurassic World"
file = URI.open("https://images-prod.dazeddigital.com/1362/azure/dazed-prod/1330/5/1335508.jpeg")
villa = Villa.new(name: "Dinosaur Den", address: "Isla Sorna, Costa Rica", movie_genre: "Adventure", description: "Nestled in a secluded jungle, this villa offers close encounters with prehistoric creatures in a safe and controlled environment.", price_per_night: 360, guests_number: 5)
villa.photo.attach(io: file, filename: "shire.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

# user = User.new(email: "sofia@yopmail.com", password: "123456", firstname: "Sofia", lastname: "Coppola")

# # Villa 17 - Inspired by "Indiana Jones"
# file = URI.open("https://images-prod.dazeddigital.com/1362/azure/dazed-prod/1330/5/1335508.jpeg")
# villa = Villa.new(name: "Mystic Mountain Lodge", address: "Mount Everest Base Camp, Solukhumbu, Nepal", movie_genre: "Adventure", description: "A lodge offering breathtaking views and a touch of mysticism at the base of the world's highest peak.", price_per_night: 250, guests_number: 10)
# villa.photo.attach(io: file, filename: "shire.jpg", content_type: "image/jpg")
# villa.user = user
# villa.save!

# # Villa 18 - Inspired by "The Lord of the Rings"
# file = URI.open("https://images-prod.dazeddigital.com/1362/azure/dazed-prod/1330/5/1335508.jpeg")
# villa = Villa.new(name: "Rivendell Retreat", address: "Kaitoke Regional Park, Wellington, New Zealand", movie_genre: "Fantasy", description: "An elegant elven house surrounded by waterfalls and lush forests, offering peace and inspiration.", price_per_night: 320, guests_number: 3)
# villa.photo.attach(io: file, filename: "shire.jpg", content_type: "image/jpg")
# villa.user = user
# villa.save!

# # Villa 19 - Inspired by "Finding Nemo"
# file = URI.open("https://images-prod.dazeddigital.com/1362/azure/dazed-prod/1330/5/1335508.jpeg")
# villa = Villa.new(name: "Oceanic Oasis", address: "Great Barrier Reef, Queensland, Australia", movie_genre: "Animation", description: "A floating villa on the crystal-clear waters of the Great Barrier Reef, offering snorkeling and underwater adventures.", price_per_night: 430, guests_number: 4)
# villa.photo.attach(io: file, filename: "shire.jpg", content_type: "image/jpg")
# villa.user = user
# villa.save!

# # Villa 20 - Inspired by "Blade Runner"
# file = URI.open("https://images-prod.dazeddigital.com/1362/azure/dazed-prod/1330/5/1335508.jpeg")
# villa = Villa.new(name: "Cyberpunk Condo", address: "Neo-Tokyo, 100-8111, Japan", movie_genre: "Sci-Fi", description: "A high-tech condo in the heart of a neon-lit futuristic city, offering a glimpse into the cyberpunk lifestyle.", price_per_night: 300, guests_number: 2)
# villa.photo.attach(io: file, filename: "shire.jpg", content_type: "image/jpg")
# villa.user = user
# villa.save!

# # Villa 21 - Inspired by "World War Z"
# file = URI.open("https://images-prod.dazeddigital.com/1362/azure/dazed-prod/1330/5/1335508.jpeg")
# villa = Villa.new(name: "Zombie Apocalypse Bunker", address: "Undisclosed Location, Nevada, USA", movie_genre: "Horror", description: "A secure and fortified bunker designed for survival in style, with all amenities to withstand any apocalypse.", price_per_night: 600, guests_number: 8)
# villa.photo.attach(io: file, filename: "shire.jpg", content_type: "image/jpg")
# villa.user = user
# villa.save!

# # Villa 22 - Inspired by "Twilight"
# file = URI.open("https://images-prod.dazeddigital.com/1362/azure/dazed-prod/1330/5/1335508.jpeg")
# villa = Villa.new(name: "Vampire Manor", address: "Transylvania, 507025, Romania", movie_genre: "Horror", description: "A gothic manor nestled in the Carpathian Mountains, offering a darkly romantic retreat with a hint of mystery.", price_per_night: 330, guests_number: 6)
# villa.photo.attach(io: file, filename: "shire.jpg", content_type: "image/jpg")
# villa.user = user
# villa.save!

# # Villa 23 - Inspired by "Pirates of the Caribbean"
# file = URI.open("https://images-prod.dazeddigital.com/1362/azure/dazed-prod/1330/5/1335508.jpeg")
# villa = Villa.new(name: "Pirate Cove Hideout", address: "Nassau, New Providence, Bahamas", movie_genre: "Adventure", description: "A secluded beach villa offering a true pirate experience, complete with treasure hunts and Caribbean views.", price_per_night: 290, guests_number: 7)
# villa.photo.attach(io: file, filename: "shire.jpg", content_type: "image/jpg")
# villa.user = user
# villa.save!

# # Villa 24 - Inspired by  "Game of Thrones"
# file = URI.open("https://images-prod.dazeddigital.com/1362/azure/dazed-prod/1330/5/1335508.jpeg")
# villa = Villa.new(name: "King's Landing Palace", address: "Dubrovnik, Croatia", movie_genre: "Fantasy", description: "A majestic villa offering luxurious accommodations and views of the Adriatic Sea, fit for royalty.", price_per_night: 410, guests_number: 5)
# villa.photo.attach(io: file, filename: "shire.jpg", content_type: "image/jpg")
# villa.user = user
# villa.save!

# # Villa 25 - Inspired by "Alien"
# file = URI.open("https://images-prod.dazeddigital.com/1362/azure/dazed-prod/1330/5/1335508.jpeg")
# villa = Villa.new(name: "Alien Outpost", address: "Area 51, Nevada, USA", movie_genre: "Sci-Fi", description: "A unique desert retreat offering an immersive extraterrestrial experience, with UFO sightings and alien technology.", price_per_night: 520, guests_number: 4)
# villa.photo.attach(io: file, filename: "shire.jpg", content_type: "image/jpg")
# villa.user = user
# villa.save!

puts "25 villas and 3 owners created"
