# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Booking.destroy_all
Listing.destroy_all
Guest.destroy_all


puts "Seeding Listings!"
Listing.create(name: "Napa Winery", location: "Napa, CA", image: "napa house.jpg", description: "It's stunning, on the beach!", price: 3500)
Listing.create(name: "Austin's Finest Mansion", location: "Austin, TX", image: "austin texas.jpg", description: "Lovely cabin, sleeps 25, makes you feel one with nature", price: 1500)
Listing.create(name: "White Italian Monstrocity", location: "Amalfi Coast, Italy", image: "italy house.jpg", description: "Jump on in to the stunning pools, or take a climb into the coastal rock formations", price: 2000)
Listing.create(name: "The English Countryside Mansion", location: "Manchester, England", image: "Manchester England House.jpg", description: "A proper get away in the English countryside. Horse stables on property and avialable to ride into the sunset", price: 2500)
Listing.create(name: "Perry's Palace", location: "Atlanta, GA", image: "Tyler-Perry’s-Atlanta-Stunning-Mansion-Just-Sold-for-17.5-Million-670x290.jpg", description: "Hidden in plain view, this Atlanta jewel gives all the luxury and comfort you can dream of", price: 10000)

Listing.create(name: "Skier Paradise", location: "Vail, CO", image: "Vail-getaway.jpg", description: "Ski-in luxury in the heart of Breaver Creek!", price: 1270)
Listing.create(name: "Star-gazers Getaway", location: "Aspen, CO", image: "Aspen-mansion.jpg", description: "This ranch is a breathtaking property set on the Frying Pan River, offering spectacular views and star filled nights", price: 1550)
Listing.create(name: "Telluride's Winter Wonderland", location: "Telluride, CO", image: "Telluride Ranch.jpg", description: "This Telluride Benchmark House is an alpine ski-in/ski-out private luxury home located in the heart of the Tellluride ski resort", price: 780)
Listing.create(name: "Jackson's Finest", location: "Jackson Hole, WY", image: "Jackson Hole mansion.jpg", description: "The best that Jackson Hole has to offer located just north of downtown Jackson", price: 7000)
Listing.create(name: "The Alps Chalet", location: "Courchevel, France", image: "Courchevel Resort.jpg", description: "Chalet ideally placed for the centre of Courchevel 1850 ski resort", price: 2500)
Listing.create(name: "A Traditional Swiss Chalet", location: "St. Moritz, Switzerland", image: "St Moritz Chalet.jpg", description: "This dreamlike property embodies irresistible charm, security and style", price: 3500)

Listing.create(name: "Le Alphane", location: "Gouverneur, St. Barts", image: "st-barts-clubhouse-villa.jpeg", description: "Striking luxury resort-style is what defines the St. Barts Clubhouse Villa, a spacious oasis in the hills above Lurin with six bedrooms that sleeps up to 12; the house can be rented as a four, five or six-bedroom.", price: 45000)
Listing.create(name: "Villa Carlotta", location: "Cala di Volpe, Sardinia", image: "cala-di-volpe-villa.png", description: "Designed by an internationally renowned architect, this elegant villa is elevated above Costa Smeralda’s countryside and enjoys exceptional views along the coastline. The home incorporates an array of unique features to create an idyllic retreat in an incredible environment.", price: 10000)
Listing.create(name: "Villa Cezanne", location: "Elia, Mykonos", image: "thalassa-mykonos-villa.jpeg", description: "The divine Villa Thalassa is situated over the alluring Elia gulf, the hot spot for water sport activities. The beautiful estate is located close to mesmerizing beaches of the southeast side of the island, such as Kalo Livadi, Agrari, Lia and the crystal-clear waters of Kalafatis. The idyllic villa offers magical views that will take your breath away. The eminent beauty of Mykonos is harmonized with the gorgeous exterior of the Villa and provides a calm and overwhelming stay.", price: 7000)
Listing.create(name: "Alila Villa Uluwatu", location: "Saba, Bali", image: "villa-ylang-ylang-bali.jpeg", description: "Villa Ylang Ylang is a stunning, beach-front vacation residence that epitomizes luxurious holiday living. More importantly, the villa stands as a premier destination and emerging mecca for overall wellness – body, mind and soul – as well as a sanctuary where positive and rejuvenating energies radiate.", price: 4900)
Listing.create(name: "Villa Dunnes", location: "Marrakesh, Morocco", image: "luxury-marrakech-villa.jpeg", description: "This recently constructed villa has been designed with incredible passion, decorated throughout using traditional warm Moroccan colours, and offers wonderful details with lush upholstery with embroidered silk, Moroccan archways and heavy wooden doors. There is a dining room, lounge with large flat screen TV, 7 bedrooms and 7 bathrooms.", price: 9000)
Listing.create(name: "Casa Na Ilha", location: "Itacaré, Brazil", image: "itacare-brazil-villa.jpeg", description: "This gorgeous villa rental with an outdoor pool is located in Itacaré, Brazil, and can accommodate four guests. As guests enter the villa, they will find two spectacular bedrooms boasting comfortable beds dressed with quality linens.", price: 3388)


puts "Seeding Guests!"
Guest.create(name: Faker::Name.name)
Guest.create(name: Faker::Name.name)
Guest.create(name: Faker::Name.name)
Guest.create(name: Faker::Name.name)
Guest.create(name: Faker::Name.name)
Guest.create(name: Faker::Name.name)
Guest.create(name: Faker::Name.name)
Guest.create(name: Faker::Name.name)

puts "Seeding Bookings!"
10.times do 
    Booking.create(listing_id: Listing.all.sample.id, guest_id: Guest.all.sample.id, rating:(rand(1..5)))
end

puts "Seeded Successful!"