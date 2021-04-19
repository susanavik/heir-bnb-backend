# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

listing1 = Listing.create(location: "Napa, CA", image: "app/assets/napa house.jpg", description: "It's stunning, on the beach!", price: 3500)
listing2 = Listing.create(location: "Austin, TX", image: "app/assets/austin texas.jpg", description: "Lovely cabin, sleeps 25, makes you feel one with nature", price: 1500)
listing3 = Listing.create(location: "Amalfi Coast, Italy", image: "app/assets/italy house.jpg", description: "Jump on in to the stunning pools, or take a climb into the coastal rock formations", price: 2000)
listing4 = Listing.create(location: "Manchester, England", image: "app/assets/Manchester England House.jpg", description: "A proper get away in the English countryside. Horse stables on property and avialable to ride into the sunset", price: 2500)
listing5 = Listing.create(location: "Atlanta, GA", image: "app/assets/Tyler-Perry’s-Atlanta-Stunning-Mansion-Just-Sold-for-17.5-Million-670x290.jpg", description: "Hidden in plain view, this Atlanta jewel gives all the luxury and comfort you can dream of", price: 10000)

vail_estate = Listing.create(location: "Vail, CO", image: "app/assets/Vail-getaway.jpg", description: "Ski-in luxury in the heart of Breaver Creek!", price: 1270)
apsen_ranch = Listing.create(location: "Aspen, CO", image: "app/assets/Aspen-mansion.jpg", description: "This ranch is a breathtaking property set on the Frying Pan River, offering spectacular views and star filled nights", price: 1550)
telluride_benchmark = Listing.create(location: "Telluride, CO", image: "app/assets/Telluride Ranch.jpg", description: "This Telluride Benchmark House is an alpine ski-in/ski-out private luxury home located in the heart of the Tellluride ski resort", price: 780)
jackson_hole_river = Listing.create(location: "Jackson Hole, WY", image: "app/assets/Jackson Hole mansion.jpg", description: "The best that Jackson Hole has to offer located just north of downtown Jackson", price: 7000)
courchevel_chalet = Listing.create(location: "Courchevel, France", image: "app/assets/Courchevel Resort.jpg", description: "Chalet ideally placed for the centre of Courchevel 1850 ski resort", price: 2500)
st_moritz_chalet = Listing.create(location: "St. Moritz, Switzerland", image: "app/assets/St Moritz Chalet.jpg", description: "This dreamlike property embodies irresistible charm, security and style", price: 3500)

guest1 = Guest.create(name: Faker::Name.name)
guest2 = Guest.create(name: Faker::Name.name)
guest3 = Guest.create(name: Faker::Name.name)
guest4 = Guest.create(name: Faker::Name.name)
guest5 = Guest.create(name: Faker::Name.name)
guest6 = Guest.create(name: Faker::Name.name)
guest7 = Guest.create(name: Faker::Name.name)
guest8 = Guest.create(name: Faker::Name.name)

10.times do 
    Booking.create(listing_id: Listing.all.sample.id, guest_id: Guest.all.sample.id, rating:(rand(1..8)))
end

puts "seeded!"
puts "seeded!"