# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
listing1 = Listing.create(location: "Napa, CA", image: "", description: "It's stunning, on the beach!", price: 1500)

puts "seeded!"


vail_estate = Listing.create(location: "Vail, CO", image: "app/assets/Vail-getaway.jpg", description: "Ski-in luxury in the heart of Breaver Creek!", price: 1270)

apsen_ranch = Listing.create(location: "Aspen, CO", image: "app/assets/Aspen-mansion.jpg", description: "This ranch is a breathtaking property set on the Frying Pan River, offering spectacular views and star filled nights", price: 1550)

telluride_benchmark = Listing.create(location: "Telluride, CO", image: "app/assets/Telluride Ranch.jpg", description: "This Telluride Benchmark House is an alpine ski-in/ski-out private luxury home located in the heart of the Tellluride ski resort", price: 780)

jackson_hole_river = Listing.create(location: "Jackson Hole, WY", image: "app/assets/Jackson Hole mansion.jpg", description: "The best that Jackson Hole has to offer located just north of downtown Jackson", price: 7000)

courchevel_chalet = Listing.create(location: "Courchevel, France", image: "app/assets/Courchevel Resort.jpg", description: "Chalet ideally placed for the centre of Courchevel 1850 ski resort", price: 2500)

st_moritz_chalet = Listing.create(location: "St. Moritz, Switzerland", image: "app/assets/St Moritz Chalet.jpg", description: "This dreamlike property embodies irresistible charm, security and style", price: 3500)