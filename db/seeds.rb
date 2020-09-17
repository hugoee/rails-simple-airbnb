# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."

4.times do
  Flat.create!(
    name: Faker::Creature::Animal.name,
    address: Faker::Address.full_address,
    description: Faker::Marketing.buzzwords,
    price_per_night: Faker::Number.decimal(l_digits: 3, r_digits: 2),
    number_of_guests: rand(1...6)
  )
end

puts "Finished!"

