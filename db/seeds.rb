puts "Cleaning all the products"

Product.delete_all

puts "Creating a few products, hold on...."

new_store = Store.create

10.times do |product|
  new_product = Product.create(
    name: Faker::Hipster.words,
    description: Faker::Hipster.sentence
    price: Faker::Number.decimal(l_digits: 2) #=> 11.88
    )
end
