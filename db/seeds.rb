require 'open-uri'
require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying all order items..."
OrderItem.delete_all if Rails.env.development?
puts "All order items were destroyed."

puts ''

puts "Destroying all carts..."
Cart.delete_all if Rails.env.development?
puts "All carts were destroyed."

puts ''

puts "Destroying all the products..."
Product.delete_all if Rails.env.development?
puts "All products were destroyed."

puts ''

puts "Destroying all stores..."
Store.delete_all if Rails.env.development?
puts "All stores were destroyed."

puts ''

puts "Destroying all users..."
User.delete_all if Rails.env.development?
puts "All users were destroyed."

puts ''

puts "Destroying all the categories..."
Categorie.delete_all if Rails.env.development?
puts "All categories were destroyed."

puts ''

puts "Creating 3 dummy users."
user_dummy = User.create(email: "dummy@user.com", password: "123456")
puts "#{user_dummy.email} was created."

user_dummy_two = User.create(email: "dummy2@user.com", password: "123456")
puts "#{user_dummy_two.email} was created."

user_dummy_three = User.create(email: "dummy3@user.com", password: "123456")
puts "#{user_dummy_three.email} was created."

puts ''

puts "Creating dummy category."
category = Categorie.create(name: 'Dummy category')

30.times do
  Categorie.create(name: Faker::Commerce.department)
end

puts ''

def create_store(user)
  store = Store.create(
    name: Faker::Company.name,
    address: Faker::Address.city,
    description: Faker::Commerce.department,
    discount_breakpoints: [500, 600, 700, 800, 900, 1000].sample,
    user_id: user.id
  )
  return store
end

puts "Creating stores..."
10.times do
  new_store = create_store(user_dummy)
  puts "Store #{new_store.id} was created."
  puts ''
  puts "Creating a few products, hold on..."
  10.times do
    new_product = Product.create(
      name: Faker::Commerce.product_name,
      description: Faker::Hipster.sentence,
      price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
      store_id: new_store.id,
      category_id: category.id
    )
    puts "Product #{new_product.id} was created."
  end
end

private











