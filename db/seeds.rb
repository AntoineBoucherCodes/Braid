require 'open-uri'
require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying all stores..."
Store.destroy_all if Rails.env.development?
puts "All stores were destroyed."

puts "Creating dummy user."
user_dummy = User.create(email: "dummy@user.com", password: "123456")
puts "#{user_dummy.id} was created."

puts "Creating stores..."
10.times do
  new_store = Store.create(
    name: Faker::Company.name,
    address: Faker::Address.city,
    description: Faker::Company.catch_phrase,
    discount_breakpoints: rand(500..3000)
    )
  puts "Store ##{new_store.id} was created."
end
