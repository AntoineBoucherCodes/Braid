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
Store.delete_all if Rails.env.development?
puts "All stores were destroyed."

puts ''

puts "Destroying all users..."
User.delete_all if Rails.env.development?
puts "All users were destroyed."

puts ''

puts "Creating dummy user."
user_dummy = User.create(email: "dummy@user.com", password: "123456")
puts "#{user_dummy.email} was created."

puts ''

puts "Creating stores..."
10.times do
  new_store = Store.create(
    name: Faker::Company.name,
    address: Faker::Address.city,
    description: Faker::Commerce.department,
    discount_breakpoints: [500, 600, 700, 800, 900, 1000].sample,
    user_id: user_dummy.id
  )
  puts "Store ##{new_store.id} was created."
end
