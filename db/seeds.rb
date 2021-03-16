# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env.development?
  for i in 0..10 do 
    Business.create(
      name: Faker::Company.industry,
      website: Faker::Internet.url(path: false),
      us_state: Faker::Address.state 
    )
  end 
end 