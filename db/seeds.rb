require 'faker' # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all
(1..20).each do |_id|
  Restaurant.create!(
    # each user is assigned an id from 1
    name: Faker::Name.name,
    address: Faker::Address.street_address,
    category: Faker::Food.ethnic_category
    # reviews Faker::Number.between(from: 1, to: 10) #=> 7
  )
end
# issue each user the same password
