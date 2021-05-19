# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database"

Plant.destroy_all
User.destroy_all


puts "Database cleaned, now create users"

user = User.create!(first_name: "Saskia", last_name: "Aardenburg", email: "saskia.aardenburg@gmail.com")
User.create(first_name: "Jean", last_name: "Dumas", email: "jean.dumas@gmail.com")

puts "User created, now create plants"

Plant.create(name: "Climbing ivy", description: "Really easy to take care of it, just need water and not necessary sun.", address: "10 avenue parmentier, 75011 Paris", price: 1, photos: ??? )
Plant.create(name: "Palm tree", description: "One meter high with beautiful green leaves", address: "12 Avenue Marceau, 92400 Courbevoie", price: 3, photos: ??? )
Plant.create(name: "Piléa", description: "Like a potted water lily, so cute. Needs sun to grow.", address: "30 Rue Thomas Edison, 94000 Créteil", price: 1, photos: ??? )
Plant.create(name: "Monstera Deliciosa", description: "Needs a lot of light but especially without direct sunlight.
You will love its leaves with holes", address: "34 Rue de Rivoli, 75004 Paris", price: 4, photos: ??? )
Plant.create(name: "Aloe Vera", description: "Que vera, vera. Whatever will be, will be the future's not ours to see.", address: "5 rue des Martyrs, 75009 Paris", price: 2, photos: ??? )
Plant.create(name: "Azalea", description: "Place azalea in the kitchen or bathroom for its ability to absorb ammonia. The azalea tolerates smoky places well.", address: "14 Rue de la Paix, 75002 Paris", price: 5, photos: ??? )
Plant.create(name: "Chlorophytum comosum", description: "Aerial part, root and tuber… the whole plant is depolluting. And what efficiency!", address: "40 Rue Cassette, 75006 Paris", price: 2, photos: ??? )
Plant.create(name: "Ficus benjamina", description: "The plant fits into any bright room.", address: "15 rue amélie, 75007 Paris", price: 4, photos: ??? )
Plant.create(name: "Boston fern", description: "Sprayed regularly, it helps to significantly increase the humidity in overheated rooms", address: "7 Rue Ferdinand Dugué, 28000 Chartres", price: 5, photos: ??? )


puts "All well created ! youpi !"
