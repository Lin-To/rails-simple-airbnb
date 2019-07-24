# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Flat.delete_all if Rails.env.development?

10.times do
  Flat.create!(name: Faker::Name.unique.name,
                address: Faker::Address.street_address,
                description: Faker::Artist.name,
                price_per_night: rand(90..200),
                number_of_guest: rand(1..10),
    )

end

puts "created #{Flat.count} flats"

# name, as a string
# address, as a string
# description, as a text
# price_per_night, as an integer
# number_of_guests, as an integer
