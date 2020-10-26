require 'faker'

puts 'Destroying current restaurants'
Restaurant.destroy_all

puts 'Creating seeds'

CITIES = %w[Lyon Paris Marseille]

20.times do
  resto = Restaurant.new(
    name: Faker::FunnyName.name,
    number_of_ratings: rand(0..100),
    city: CITIES.sample,
    specialty: Faker::Food.dish,
    average_rating: rand(0..50).to_f / 10
  )
  resto.save!
end
