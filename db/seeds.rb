# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Cleaning database"

Plant.destroy_all
User.destroy_all
Booking.destroy_all

puts "Database cleaned, now create users"

saskia = User.new(first_name: "Saskia", last_name: "Aardenburg", email: "saskia@gmail.com", password: "123456")
file = URI.open('https://res.cloudinary.com/di1e8ocfv/image/upload/v1621590954/saskia_1_awvrf7.jpg')
saskia.avatar.attach(io: file, filename: 'saskia.jpg', content_type: 'image/jpg')
saskia.save!

jean = User.new(first_name: "Jean", last_name: "Dumas", email: "jean@gmail.com", password: "123456")
file = URI.open('https://res.cloudinary.com/di1e8ocfv/image/upload/v1621590954/jean_1_q38kqw.jpg')
jean.avatar.attach(io: file, filename: 'jean.jpg', content_type: 'image/jpg')
jean.save!

puts "User created, now create plants"

plant = Plant.new(name: "Climbing ivy", description: "Really easy to take care of it, just need water and not necessary sun.", address: "10 avenue parmentier, 75011 Paris", price: 1 )
plant.user = saskia
file = URI.open('https://res.cloudinary.com/di1e8ocfv/image/upload/v1621502293/Lierre_3_elikn0.jpg')
plant.photos.attach(io: file, filename: 'Lierre.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/di1e8ocfv/image/upload/v1621502293/Lierre_2_k2x3ic.jpg')
plant.photos.attach(io: file, filename: 'Lierre 2.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/di1e8ocfv/image/upload/v1621502293/Lierre_1_dycdcn.jpg')
plant.photos.attach(io: file, filename: 'Lierre 3.jpg', content_type: 'image/jpg')
plant.save!

plant = Plant.new(name: "Palm tree", description: "One meter high with beautiful green leaves", address: "12 Avenue Marceau, 92400 Courbevoie", price: 3 )
plant.user = saskia
file = URI.open('https://res.cloudinary.com/di1e8ocfv/image/upload/v1621502294/palmier_3_litbmc.jpg')
plant.photos.attach(io: file, filename: 'palmier.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/di1e8ocfv/image/upload/v1621502293/palmier_2_wasztm.jpg')
plant.photos.attach(io: file, filename: 'palmier 2.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/di1e8ocfv/image/upload/v1621502293/palmier_1_kgrbqa.jpg')
plant.photos.attach(io: file, filename: 'palmier 1.jpg', content_type: 'image/jpg')
plant.save!

plant = Plant.new(name: "Piléa", description: "Like a potted water lily, so cute. Needs sun to grow.", address: "30 Rue Thomas Edison, 94000 Créteil", price: 1 )
plant.user = saskia
file = URI.open('https://res.cloudinary.com/di1e8ocfv/image/upload/v1621502294/pilea_1_zxekk6.jpg')
plant.photos.attach(io: file, filename: 'pilea 1.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/di1e8ocfv/image/upload/v1621502291/pilea_2_yjswc2.jpg')
plant.photos.attach(io: file, filename: 'pilea 2.jpg', content_type: 'image/jpg')
plant.save!

plant = Plant.new(name: "Monstera Deliciosa", description: "Needs a lot of light but especially without direct sunlight. You will love its leaves with holes", address: "34 Rue de Rivoli, 75004 Paris", price: 4 )
plant.user = saskia
file = URI.open('https://res.cloudinary.com/di1e8ocfv/image/upload/v1621502295/Monstera_1_ydp0hx.jpg')
plant.photos.attach(io: file, filename: 'monstera 1.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/di1e8ocfv/image/upload/v1621502294/Monstera_2_mu1m9h.jpg')
plant.photos.attach(io: file, filename: 'monstera 2.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/di1e8ocfv/image/upload/v1621502294/Monstera_4_wrcjuo.jpg')
plant.photos.attach(io: file, filename: 'monstera 3.jpg', content_type: 'image/jpg')
plant.save!

plant = Plant.new(name: "Aloe Vera", description: "Que vera, vera. Whatever will be, will be the future's not ours to see.", address: "5 rue des Martyrs, 75009 Paris", price: 2 )
plant.user = saskia
file = URI.open('https://res.cloudinary.com/di1e8ocfv/image/upload/v1621502290/aloe_vera_1_ojyhul.jpg')
plant.photos.attach(io: file, filename: 'aloe vera 1.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/di1e8ocfv/image/upload/v1621502291/aloe_vera_2_yeum3d.jpg')
plant.photos.attach(io: file, filename: 'aloe vera 2.jpg', content_type: 'image/jpg')
plant.save!

plant = Plant.new(name: "Azalea", description: "Place azalea in the kitchen or bathroom for its ability to absorb ammonia. The azalea tolerates smoky places well.", address: "14 Rue de la Paix, 75002 Paris", price: 5 )
plant.user = saskia
file = URI.open('https://res.cloudinary.com/di1e8ocfv/image/upload/v1621502293/azalee_2_fz7zyc.jpg')
plant.photos.attach(io: file, filename: 'azalea 1.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/di1e8ocfv/image/upload/v1621502291/azalee_3_vpyp4s.jpg')
plant.photos.attach(io: file, filename: 'azalea 2.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/di1e8ocfv/image/upload/v1621502291/azalee_1_ietp6b.jpg')
plant.photos.attach(io: file, filename: 'azalea 3.jpg', content_type: 'image/jpg')
plant.save!

plant = Plant.new(name: "Chlorophytum comosum", description: "Aerial part, root and tuber… the whole plant is depolluting. And what efficiency!", address: "40 Rue Cassette, 75006 Paris", price: 2 )
plant.user = saskia
file = URI.open('https://res.cloudinary.com/di1e8ocfv/image/upload/v1621502291/Chlorophytum_3_zwncvb.jpg')
plant.photos.attach(io: file, filename: 'Chlorophytum 1.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/di1e8ocfv/image/upload/v1621502291/Chlorophytum_1_hwhy23.jpg')
plant.photos.attach(io: file, filename: 'Chlorophytum 2.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/di1e8ocfv/image/upload/v1621502291/Chlorophytum_2_x0quqb.jpg')
plant.photos.attach(io: file, filename: 'Chlorophytum 3.jpg', content_type: 'image/jpg')
plant.save!

plant = Plant.new(name: "Ficus benjamina", description: "The plant fits into any bright room.", address: "15 rue amélie, 75007 Paris", price: 4 )
plant.user = saskia
file = URI.open('https://res.cloudinary.com/di1e8ocfv/image/upload/v1621502292/Ficus_benjamina_2_swnwgt.jpg')
plant.photos.attach(io: file, filename: 'Ficus 1.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/di1e8ocfv/image/upload/v1621502292/Ficus_benjamina_1_jblitq.jpg')
plant.photos.attach(io: file, filename: 'Ficus 2.jpg', content_type: 'image/jpg')
plant.save!

plant = Plant.new(name: "Boston fern", description: "Sprayed regularly, it helps to significantly increase the humidity in overheated rooms", address: "7 Rue Ferdinand Dugué, 28000 Chartres", price: 5 )
plant.user = saskia
file = URI.open('https://res.cloudinary.com/di1e8ocfv/image/upload/v1621502291/Boston_fern_1_lfh3sj.jpg')
plant.photos.attach(io: file, filename: 'Boston fern 1.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/di1e8ocfv/image/upload/v1621502292/Boston_fern_3_y3n0rr.jpg')
plant.photos.attach(io: file, filename: 'Boston fern 2.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/di1e8ocfv/image/upload/v1621502292/Boston_fern_2_fcprxd.jpg')
plant.photos.attach(io: file, filename: 'Boston fern 3.jpg', content_type: 'image/jpg')
plant.save!

puts "All well created ! youpi !"
