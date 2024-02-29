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
Booking.destroy_all
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


puts "Creating villas 1 - 5 ..."

user = User.new(email: "martin@yopmail.com", password: "123456", firstname: "Martin", lastname: "Scorsese")

# Villa 1 - Inspired by "The Lord of the Ring"
file = URI.open("https://miro.medium.com/v2/resize:fit:1400/format:webp/0*Ln0064ci-IQNC7f8")
villa = Villa.new(name: "The Shire Retreat", address: "1 Bagshot Row, Hobbiton, New Zealand", movie_genre: "Fantasy", description: "Nestled in the heart of a lush, green landscape, this cozy Hobbit hole offers a blend of rustic charm and modern comforts, perfect for fans looking to live like a Hobbit.", price_per_night: 220, guests_number: 4, inspired_by: "The Lord of the Ring")
villa.photo.attach(io: file, filename: "shire.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

# Villa 2 - Inspired by "Iron Man"
file = URI.open("https://cdna.artstation.com/p/assets/images/images/009/981/268/large/phil-saunders-calalautner-houseweb.jpg")
villa = Villa.new(name: "Stark Modernism", address: "10880 Malibu Point, Malibu, CA, USA", movie_genre: "Action", description: "A sleek, state-of-the-art villa perched on a cliffside, offering panoramic ocean views and equipped with the latest technology.", price_per_night: 450, guests_number: 6, inspired_by: "Iron Man")
villa.photo.attach(io: file, filename: "stark.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

# Villa 3 - Inspired by "Jaws"
file = URI.open("https://media.cnn.com/api/v1/images/stellar/prod/130816101217-jaws.jpg")
villa = Villa.new(name: "Amity Island Cottage", address: "12 Brody Lane, Martha's Vineyard, MA, USA", movie_genre: "Thriller", description: "A charming seaside cottage with direct beach access, perfect for those who love the ocean's beauty and don't mind its mysteries.", price_per_night: 320, guests_number: 5, inspired_by: "Jaws")
villa.photo.attach(io: file, filename: "jaws.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

# Villa 4 - Inspired by "Avatar"
file = URI.open("https://images-prod.dazeddigital.com/1362/azure/dazed-prod/1330/5/1335508.jpeg")
villa = Villa.new(name: "Pandoran Paradise", address: "Hallelujah Mountains, Zhangjiajie, Hunan, China", movie_genre: "Sci-Fi", description: "An eco-friendly villa nestled in a lush, alien forest with stunning flora and immersive virtual reality experiences of Pandora.", price_per_night: 380, guests_number: 4, inspired_by: "Avatar")
villa.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

# Villa 5 - Inspired by "Harry Potter"
file = URI.open("https://img.theweek.in/content/dam/week/webworld/feature/lifestyle/2017/august/hogwarts-school.jpg")
villa = Villa.new(name: "Hogwarts Tower Suite", address: "Alnwick Castle, Alnwick NE66 1NQ, UK", movie_genre: "Fantasy", description: "A magical suite located in a castle tower, complete with enchanted ceilings, spell books, and a cozy fireplace.", price_per_night: 300, guests_number: 8, inspired_by: "Harry Potter")
villa.photo.attach(io: file, filename: "harry.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

puts "... creating villas 6 - 10 ..."

# Villa 6 - Inspired by "The Shining"
file = URI.open("https://movie-locations.com/movies/s/Shining-Timberline-Lodge.jpg")
villa = Villa.new(name: "The Overlook Cabin", address: "333 East Wonderview Avenue, Estes Park, CO, USA", movie_genre: "Horror", description: "A secluded mountain retreat with breathtaking views and an eerie charm, perfect for those who seek solitude.", price_per_night: 270, guests_number: 4, inspired_by: "The Shining")
villa.photo.attach(io: file, filename: "shining.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

# Villa 7 - Inspired by "Jurassic Park"
file = URI.open("https://i.ibb.co/xhJF3Dz/21.jpg")
villa = Villa.new(name: "Jurassic Jungle Lodge", address: "Isla Nublar, Costa Rica", movie_genre: "Adventure", description: "A thrilling escape located in a lush, prehistoric jungle with guided tours and dinosaur sightings.", price_per_night: 340, guests_number: 6, inspired_by: "Jurassic Park")
villa.photo.attach(io: file, filename: "jurassic.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

user = User.new(email: "quentin@yopmail.com", password: "123456", firstname: "Quentin", lastname: "Tarantino")

# Villa 8 - Inspired by "Interstellar"
file = URI.open("https://static.wikia.nocookie.net/concord/images/f/fb/Interstellar_spaceship.jpg")
villa = Villa.new(name: "Cosmic Horizon Retreat", address: "International Space Station, Low Earth Orbit", movie_genre: "Sci-Fi", description: "Embark on a journey beyond the stars at this interstellar villa, offering unparalleled views of distant galaxies and celestial phenomena.", price_per_night: 1000, guests_number: 2, inspired_by: "Interstellar")
villa.photo.attach(io: file, filename: "interstellar.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

# Villa 9 - Inspired by "The lord of the rings"
file = URI.open("https://wallpapercave.com/wp/wp1947157.jpg")
villa = Villa.new(name: "Elven Enclave", address: "Fiordland National Park, Te Anau, New Zealand", movie_genre: "Fantasy", description: "An ethereal retreat nestled in ancient forests, inspired by the elegance and tranquility of Elven architecture.", price_per_night: 280, guests_number: 4, inspired_by: "The lord of the rings")
villa.photo.attach(io: file, filename: "rivendell.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

# Villa 10 - Inspired by "Ninja Assassin"
file = URI.open("https://www.peteryee.my/graphics/inspiringwell/largeorph.jpg")
villa = Villa.new(name: "Ninja Dojo Retreat", address: "1 Chome-1-1 Yokoami, Sumida City, Tokyo, Japan", movie_genre: "Action", description: "A traditional Japanese dojo turned into a serene retreat, offering martial arts training and Zen gardens for meditation.", price_per_night: 220, guests_number: 6, inspired_by: "Ninja Assassin")
villa.photo.attach(io: file, filename: "ninja.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

puts "... creating villas 11 - 17. Bear with us, almost done!"

# Villa 11 - Inspired by "The Good, The Bad and The Ugly"
file = URI.open("https://hips.hearstapps.com/clv.h-cdn.co/assets/17/14/2048x1152/hd-aspect-1491511467-mane-street-2.jpg")
villa = Villa.new(name: "Wild West Ranch", address: "1 Old West Town, Tombstone, AZ, USA", movie_genre: "Western", description: "Step back in time with this authentic ranch experience, complete with horseback riding and cowboy cookouts.", price_per_night: 180, guests_number: 8, inspired_by: "The Good, The Bad and The Ugly")
villa.photo.attach(io: file, filename: "shire.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

# Villa 12 - Inspired by "Star Wars"
file = URI.open("https://i2-prod.mirror.co.uk/incoming/article6681133.ece/ALTERNATES/s1200d/PAY-Millenium-Falcon-mansion.jpg")
villa = Villa.new(name: "Millenium Falcon Mansion", address: "Space Launch Complex 40, Cape Canaveral, FL, USA", movie_genre: "Sci-Fi", description: "A futuristic villa offering a gateway to the stars, with virtual space tours and zero-gravity simulators.", price_per_night: 500, guests_number: 4, inspired_by: "Star Wars")
villa.photo.attach(io: file, filename: "star_wars.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

user = User.new(email: "sofia@yopmail.com", password: "123456", firstname: "Sofia", lastname: "Coppola")

# Villa 13 - Inspired by "Indiana Jones"
file = URI.open("https://cdn.zavant.ai/images/62898f19-ab09-4790-8f75-26741756d966.png")
villa = Villa.new(name: "Mystic Mountain Lodge", address: "Mount Everest Base Camp, Solukhumbu, Nepal", movie_genre: "Adventure", description: "A lodge offering breathtaking views and a touch of mysticism at the base of the world's highest peak.", price_per_night: 250, guests_number: 10, inspired_by: "Indiana Jones")
villa.photo.attach(io: file, filename: "indiana.png", content_type: "image/png")
villa.user = user
villa.save!

# Villa 14 - Inspired by "Finding Nemo"
file = URI.open("https://images.squarespace-cdn.com/content/v1/51cdafc4e4b09eb676a64e68/1470759792620-0KBUSY0X9VL6MYKUG21U/nemo11a.jpg")
villa = Villa.new(name: "Oceanic Oasis", address: "Great Barrier Reef, Queensland, Australia", movie_genre: "Animation", description: "A floating villa on the crystal-clear waters of the Great Barrier Reef, offering snorkeling and underwater adventures.", price_per_night: 430, guests_number: 4, inspired_by: "Finding Nemo")
villa.photo.attach(io: file, filename: "nemo.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

# Villa 15 - Inspired by "Twilight"
file = URI.open("https://assets3.thrillist.com/v1/image/3164560/2880x1620/crop;webp=auto;jpeg_quality=60;progressive.jpg")
villa = Villa.new(name: "Vampire Manor", address: "Transylvania, 507025, Romania", movie_genre: "Horror", description: "A gothic manor nestled in the Carpathian Mountains, offering a darkly romantic retreat with a hint of mystery.", price_per_night: 330, guests_number: 6, inspired_by: "Twilight")
villa.photo.attach(io: file, filename: "twilight.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

# Villa 16 - Inspired by "Pirates of the Caribbean"
file = URI.open("https://static.wikia.nocookie.net/pirates/images/2/26/Elizabeth_12.jpg")
villa = Villa.new(name: "Pirate Cove Hideout", address: "Nassau, New Providence, Bahamas", movie_genre: "Adventure", description: "A secluded beach villa offering a true pirate experience, complete with treasure hunts and Caribbean views.", price_per_night: 290, guests_number: 7, inspired_by: "Pirates of the Caribbean")
villa.photo.attach(io: file, filename: "pirates.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

# Villa 17 - Inspired by  "Game of Thrones"
file = URI.open("https://media.cntraveler.com/photos/57184eb980cf3e034f9742c0/master/w_1600,c_limit/game-of-thrones-brothel-cr-hbo.jpg")
villa = Villa.new(name: "King's Landing Palace", address: "Dubrovnik, Croatia", movie_genre: "Fantasy", description: "A majestic villa offering luxurious accommodations and views of the Adriatic Sea, fit for royalty.", price_per_night: 410, guests_number: 5, inspired_by: "Game of Thrones")
villa.photo.attach(io: file, filename: "kings_landing.jpg", content_type: "image/jpg")
villa.user = user
villa.save!

puts "... creating a few bookings. This is the last step!"

booking = Booking.new(start_date: "2023-12-24", end_date: "2024-01-02")
booking.villa = Villa.find_by(name: "Hogwarts Tower Suite")
booking.user = user
booking.save!(validate: false)

booking = Booking.new(start_date: "2023-08-14", end_date: "2024-08-28")
booking.villa = Villa.find_by(name: "Amity Island Cottage")
booking.user = user
booking.save!(validate: false)

booking = Booking.new(start_date: "2024-07-01", end_date: "2024-07-08")
booking.villa = Villa.find_by(name: "Jurassic Jungle Lodge")
booking.user = user
booking.save!(validate: false)

puts "17 villas, 3 owners created, and 3 bookings created!"
