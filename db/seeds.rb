require 'faker'

Restaurant.destroy_all if Rails.env.development?

5.times do
  restaurant = Restaurant.create(name: Faker::Food.ingredient, address: Faker::Address.city, category: %w(chinese italian japanese french belgian).sample, phone_number: Faker::PhoneNumber.phone_number)
  3.times do
    Review.create(rating: (1..5).to_a.sample, content: Faker::Lorem.paragraph, restaurant: restaurant)
  end
end
