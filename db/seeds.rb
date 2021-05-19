# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "On commence la seed"

puts "Creating user"
user = User.create!(first_name: "Saskia", last_name: "Aardenburg", email: "saskia.aardenburg@gmail.com")

Plant.create(name: "Lierre", description: "Really easy to take care of it, just need water and not necessary sun.", address: "10 avenue parmentier, 75011 Paris", price: 2, photos: ??? )
Plant.create(name: "Palmier", description: "One meter high with beautiful green leaves", address: "12 Avenue Marceau, 92400 Courbevoie", price: 3, photos: ??? )
Plant.create(name: "Grand Piléa", description: "Like a potted water lily, so cute. Needs sun to grow.", address: "30 Rue Thomas Edison, 94000 Créteil", price: 1, photos: ??? )
Plant.create(name: "Monstera Deliciosa", description: "Needs a lot of light but especially without direct sunlight.
You will love its leaves with holes", address: "34 Rue de Rivoli, 75004 Paris", price: 4, photos: ??? )
Plant.create(name: "Aloe Vera", description: "Que vera, vera. Whatever will be, will be the future's not ours to see.", address: "5 rue des Martyrs, 75009 Paris", price: 2, photos: ??? )
Plant.create(name: "Azalée", description: "Place azalea in the kitchen or bathroom for its ability to absorb ammonia. The azalea tolerates smoky places well.", address: "14 Rue de la Paix, 75002 Paris", price: 5, photos: ??? )
