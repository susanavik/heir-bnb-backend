# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

listing1 = Listing.create(location: "Napa, CA", image: "https://www.sacbee.com/latest-news/o9gu45/picture230923968/alternates/FREE_768/Ext_East_Eve_4737.jpg", description: "It's stunning, on the beach!", price: 3500)
listing2 = Listing.create(location: "Austin, TX", image: "https://www.bestdesignprojects.com/wp-content/uploads/2014/12/feature-image2.jpg", description: "Lovely cabin, sleeps 25, makes you feel one with nature", price: 1500)
listing3 = Listing.create(location: "Amalfi Coast, Italy", image: "https://hookedoneverything.com/wp-content/uploads/2016/03/8-6.jpg", description: "Jump on in to the stunning pools, or take a climb into the coastal rock formations", price: 2000)
listing4 = Listing.create(location: "Manchester, England", image: "https://i.pinimg.com/originals/88/06/32/88063277a1d26a58edeb9b897129ee41.jpg", description: "A proper get away in the English countryside. Horse stables on property and avialable to ride into the sunset", price: 2500)
listing5 = Listing.create(location: "Atlanta, GA", image: "https://www.themostexpensivehomes.com/wp-content/uploads/2016/05/Tyler-Perry%E2%80%99s-Atlanta-Stunning-Mansion-Just-Sold-for-17.5-Million-670x290.jpg", description: "Hidden in plain view, this Atlanta jewel gives all the luxury and comfort you can dream of", price: 10000)

guest1 = Guest.create(name: Faker::Name.name)
guest2 = Guest.create(name: Faker::Name.name)
guest3 = Guest.create(name: Faker::Name.name)
guest4 = Guest.create(name: Faker::Name.name)
guest5 = Guest.create(name: Faker::Name.name)

6.times do 
    Booking.create(listing_id: Listing.all.sample.id, guest_id: Guest.all.sample.id, rating:(rand(1..5)))
end
puts "seeded!"