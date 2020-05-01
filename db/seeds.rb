# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
prng = Random.new

3.times do |i|
  Category.create(name: Faker::Game.genre)
end

10.times do |i|
  Product.create(name: Faker::Game.title, price: prng.rand(1.0..900.0), category_id: 1)
end

10.times do |i|
  Product.create(name: Faker::Game.title, price: prng.rand(1.0..900.0), category_id: 2)
end

10.times do |i|
  Product.create(name: Faker::Game.title, price: prng.rand(1.0..900.0), category_id: 3)
end
