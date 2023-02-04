# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


concert_1 = Concert.create(name: "RiotFest", capacity: 500, sold_out: false )
concert_2 = Concert.create(name: "RockVill 2023", capacity: 900, sold_out: true )
concert_3 = Concert.create(name: "Louder Than Life", capacity: 1100, sold_out: false )
Band.create(band_name: "Chon", headliner: false, members: 5, concert_id: concert_1.id )
Band.create(band_name: "polyphia", headliner: true, members: 4, concert_id: concert_1.id )
Band.create(band_name: "Ichikoro", headliner: false, members: 4, concert_id: concert_2.id )
Band.create(band_name: "Covet", headliner: true, members: 2, concert_id: concert_2.id )
Band.create(band_name: "Standards", headliner: false, members: 1, concert_id: concert_3.id )
Band.create(band_name: "Fox Capture Plan", headliner: true, members: 3, concert_id: concert_3.id )