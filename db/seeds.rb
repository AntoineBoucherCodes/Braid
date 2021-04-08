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
OrderItem.delete_all
puts "All order items were destroyed."

puts ''

puts "Destroying all carts..."
Cart.delete_all
puts "All carts were destroyed."

puts ''

puts "Destroying all lobby_participants..."
LobbyParticipant.delete_all
puts "All Lobby Participants were destroyed."

puts ''

puts "Destroying all lobbies..."
Lobby.delete_all
puts "All Lobbies were destroyed."

puts ''

puts "Destroying all the products..."
Product.delete_all
puts "All products were destroyed."

puts ''

puts "Destroying all stores..."
Store.delete_all
puts "All stores were destroyed."

puts ''

puts "Destroying all users..."
User.delete_all
puts "All users were destroyed."

puts ''

puts "Destroying all the categories..."
Categorie.delete_all
puts "All categories were destroyed."

puts ''

puts "Creating 3 dummy users."
user_dummy = User.create(email: "antoine@user.com", password: "123456", username: "Antoine")
puts "#{user_dummy.email} was created."

user_dummy_two = User.create(email: "paul@user.com", password: "123456", username: "Paul")
puts "#{user_dummy_two.email} was created."

user_dummy_three = User.create(email: "patrick@user.com", password: "123456", username: "Patrick")
puts "#{user_dummy_three.email} was created."

puts ''

puts "Creating categories."
pets = Categorie.create(name: 'Pets')
wellness = Categorie.create(name: 'Wellness')
clothing = Categorie.create(name: 'Clothing')
beauty = Categorie.create(name: 'Beauty')
food = Categorie.create(name: 'Food')
jewelry = Categorie.create(name: 'Jewelry')
kids = Categorie.create(name: 'Kids')
art = Categorie.create(name: 'Art')
tech = Categorie.create(name: 'Tech')
home = Categorie.create(name: 'Home')

# 10.times do
#   Categorie.create(name: Faker::Commerce.department)
# end

puts ''

puts "Creating stores..."

casper = Store.create(
  name: "Casper",
  address: Faker::Address.city,
  description: "A mattress in a box? Casper sells luxury mattresses direct to consumers along with other sleep products.",
  discount_breakpoints: [500, 600, 700, 800, 900, 1000].sample,
  user_id: user_dummy.id,
)

# file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
# casper.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

allbirds = Store.create(
  name: "Allbirds",
  address: Faker::Address.city,
  description: "The world's most comfortable shoes? Allbirds makes organic footwear that prioritizes simple design as well as sustainable production and distribution.",
  discount_breakpoints: [500, 600, 700, 800, 900, 1000].sample,
  user_id: user_dummy.id
)

tuft = Store.create(
  name: "Tuft & Paw",
  address: Faker::Address.city,
  description: "Beautiful furniture for cats.",
  discount_breakpoints: [500, 600, 700, 800, 900, 1000].sample,
  user_id: user_dummy.id
)

quip = Store.create(
  name: "Quip",
  address: Faker::Address.city,
  description: "Healthy oral care habits for life? Quip has re-designed the electric toothbrush and refillable floss.",
  discount_breakpoints: [500, 600, 700, 800, 900, 1000].sample,
  user_id: user_dummy.id
)


glossier = Store.create(
  name: "Glossier",
  address: Faker::Address.city,
  description: "Skincare and beauty products inspired by the masses? Glossier makes products designed to be every woman's beauty essentials.",
  discount_breakpoints: [500, 600, 700, 800, 900, 1000].sample,
  user_id: user_dummy.id
)

nuggs = Store.create(
  name: "Nugss",
  address: Faker::Address.city,
  description: "NUGGS utilize an advanced technology that enables a hyper-realistic simulation of the texture & flavor of an animal-based nugget.",
  discount_breakpoints: [500, 600, 700, 800, 900, 1000].sample,
  user_id: user_dummy.id
)

mejuri = Store.create(
  name: "Mejuri",
  address: Faker::Address.city,
  description: "Fine jewelry for everyday? Mejuri designs luxury jewelry for women minus the traditional markup.",
  discount_breakpoints: [500, 600, 700, 800, 900, 1000].sample,
  user_id: user_dummy.id
)

upriseart = Store.create(
  name: "Uprise Art",
  address: Faker::Address.city,
  description: "An online art gallery, to reach a new generation of collectors.",
  discount_breakpoints: [500, 600, 700, 800, 900, 1000].sample,
  user_id: user_dummy.id
)

suvie = Store.create(
  name: "Suvie",
  address: Faker::Address.city,
  description: "Suvie is an automated refrigerator and cooker that makes healthy meals right on schedule.",
  discount_breakpoints: [500, 600, 700, 800, 900, 1000].sample,
  user_id: user_dummy.id
)

bloomscape = Store.create(
  name: "Bloomscape",
  address: Faker::Address.city,
  description: "Bloomscape makes buying plants easy - delivering healthy plants & setting you up with the tips and tricks to help your plants thrive.",
  discount_breakpoints: [500, 600, 700, 800, 900, 1000].sample,
  user_id: user_dummy.id
)

tecovas = Store.create(
  name: "Tecovas",
  address: Faker::Address.city,
  description: "Tecovas is the first direct-to-consumer western brand, selling top-quality, approachably priced cowboy boots, apparel, and accessories.",
  discount_breakpoints: [500, 600, 700, 800, 900, 1000].sample,
  user_id: user_dummy.id
)


puts "Creating a few products, hold on..."

#///////Casper////////

haven = Product.create(
  name: "Haven Bed Frame",
  description: "Wrapped in Felted Wool for softness all around.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: casper.id,
  category_id: home.id
)

repose = Product.create(
  name: "Repose Bed Frame",
  description: "Sleek support with softened edges for a warm look.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: casper.id,
  category_id: home.id
)

adjustable = Product.create(
  name: "Adjustable Bed Frame",
  description: "A customizable setup.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: casper.id,
  category_id: home.id
)

originalpillow = Product.create(
  name: "Original Casper Pillow",
  description: "A down-alternative pillow, that’s supportive with a touch of fluff.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: casper.id,
  category_id: home.id
)

foampillow = Product.create(
  name: "Foam Pillow",
  description: "A down-alternative pillow, that’s supportive with a touch of fluff.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: casper.id,
  category_id: home.id
)

#///////Allbirds////////

runningshoes = Product.create(
  name: "Running shoes",
  description: "Our running shoe designed with breathable Tree material.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: allbirds.id,
  category_id: clothing.id
)

everydaysneakers = Product.create(
  name: "Everyday sneakers",
  description: "Our everyday sneaker made with breezy eucalyptus tree.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: allbirds.id,
  category_id: clothing.id
)

hightops = Product.create(
  name: "High-Tops",
  description: "Our classic high top made with breezy eucalyptus tree.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: allbirds.id,
  category_id: clothing.id
)

#///////Tuft & Paw////////

stella = Product.create(
  name: "Stellar",
  description: "Humans appreciate the Stellar for its striking design. For cats, it’s simply an otherworldly escape from the everyday activity of the home.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: tuft.id,
  category_id: pets.id
)

happycamper = Product.create(
  name: "Happy Camper",
  description: "A cat retreat with options. This bed’s precision-cut, faceted panels are finished with wood veneer on one side and scratchable felt on the other.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: tuft.id,
  category_id: pets.id
)

rifuti = Product.create(
  name: "Rifuti",
  description: "Fit for a king yet designed for your cat. Its slatted horizontal stripes and tapered legs reference mid-century modern furniture and classic retro radio designs.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: tuft.id,
  category_id: pets.id
)

#///////Quip////////

electrictoothbrush = Product.create(
  name: "Electric Toothbrush",
  description: "All the makings for a healthy mouth, in styles you’ll love.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: quip.id,
  category_id: wellness.id
)

kidelectrictoothbrush = Product.create(
  name: "Kids Electric Toothbrush",
  description: "Help kids brush better, track progress, and earn rewards.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: quip.id,
  category_id: wellness.id
)

floss = Product.create(
  name: "Refillable Floss Pick",
  description: "Pick forever floss that replaces 180 disposable picks per refill",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: quip.id,
  category_id: wellness.id
)

#///////Glosier////////

boybrow = Product.create(
  name: "Boy Brow",
  description: "A brushable, creamy wax that visibly thickens, shapes, and grooms brows into place.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: glossier.id,
  category_id: beauty.id
)

skintint = Product.create(
  name: "Perfecting Skin Tint",
  description: "In the land between bare skin and makeup makeup exists the imperceptible wash of color that is Perfecting Skin Tint.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: glossier.id,
  category_id: beauty.id
)

makeupset = Product.create(
  name: "Makeup Set",
  description: "Our three-step makeup routine for an instantly put-together glow, plus our coated cotton makeup case—together for less in one limited-edition duo.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: glossier.id,
  category_id: beauty.id
)

#///////Nuggs////////

regularnuggs = Product.create(
  name: "Nuggs",
  description: "NUGGS utilizes advanced proteins to achieve superior nutritional content and is finished with a batter that optimizes for flavor and crunchiness, creating the most accurate chicken nugget simulation.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: nuggs.id,
  category_id: food.id
)

spicynuggs = Product.create(
  name: "Spicy Nuggs",
  description: "NUGGS utilizes advanced proteins to achieve superior nutritional content and is finished with a batter that optimizes for flavor and crunchiness, creating the most accurate chicken nugget simulation.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: nuggs.id,
  category_id: food.id
)

#///////Mejuri////////

earring = Product.create(
  name: "Croissant Earrings",
  description: "Looking like a French girl isn’t as difficile as it seems. Handcrafted in vermeil, a thick 18k gold layer on sterling silver. Consider this croissant-inspired hoops to make all your Parisian dreams come true.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: mejuri.id,
  category_id: jewelry.id
)

necklace = Product.create(
  name: "Boyfriend Necklace",
  description: "Your boyfriend denim just found its match. It’s handcrafted in 14k solid gold. Raw, loose, and bold. Wear it every day – whenever, wherever.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: mejuri.id,
  category_id: jewelry.id
)

ring = Product.create(
  name: "Monochrome Dôme Ring",
  description: "The answer to your styling dilemmas? Going monochromatic—always a solid choice. Handcrafted in 18k gold vermeil with an enamel coating and set with prasiolite.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: mejuri.id,
  category_id: jewelry.id
)

#///////Uprise Art////////

togetheragain = Product.create(
  name: "Together Again",
  description: "Three figures are depicted laying together, their bodies, for lack of a better word, bleeding into one another, the lines of their forms breaking apart and rearranging into a single object. Is this a dream about the days when we can lay together, absorbing each others presence, without fear? Is this a dream where those who are lost to us are with us again? Life, at this moment, necessitates a distinct distancing and singularity. And death then comes to encompass all that is opposed to that: togetherness, the interweaving of stories or molecules.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: upriseart.id,
  category_id: art.id
)

coralandgreen = Product.create(
  name: "Coral and Green",
  description: "Matthew Ward (b.1976) approaches pottery through a multi-disciplinary lens. Trained as a painter, he brings techniques traditionally reserved for two dimensional work into the realm of ceramics, incorporating techniques such as stamping and incising, as well as art historical concepts from the mid-20th century and postwar art. Ward is based in Santa Fe, NM and has been featured in publications such as Metropolis and Dwell.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: upriseart.id,
  category_id: art.id
)

clothedinthesun = Product.create(
  name: "Clothed in the Sun",
  description: "My work deals with the human relationship to the natural world.  This series is centered specifically on how the eye registers light, and the meaning and power of color",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: upriseart.id,
  category_id: art.id
)

#///////Suvie////////

suvieoven = Product.create(
  name: "Suvie Kitchen Robot",
  description: "Dual-Zone Cooker for Proteins and Vegetables Starch Cooker for Pasta, Rice, and more",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: suvie.id,
  category_id: tech.id
)

#///////Bloomscape////////

moneytree = Product.create(
  name: "Mini Money Tree",
  description: "A lively, pet-friendly plant topped with palmate leaves upon a stout trunk. A mini-version of the beloved braided Money Tree",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: bloomscape.id,
  category_id: home.id
)

bromeliad = Product.create(
  name: "Bromeliad Pineapple",
  description: "Truly unique pinapple plant with long-lasting blooms",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: bloomscape.id,
  category_id: home.id
)

bamboo = Product.create(
  name: "Bamboo Palm",
  description: "Tropical and dramatic with lush dark green fronds",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: bloomscape.id,
  category_id: home.id
)

#///////Tecovas////////

earl = Product.create(
  name: "The Earl",
  description: "The Earl is a versatile roper boot with universal appeal. Designed to be both practical and stylish, it features a heel shorter than that of a traditional cowboy boot. The vamp is left unadorned in order to showcase the ultra-soft, hand-burnished calfskin leather.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: tecovas.id,
  category_id: clothing.id
)

cartwright = Product.create(
  name: "The Cartwright",
  description: "The Cartwright is a timeless cowboy boot with an angled heel, signature Tecovas toe stitching, and an elegant, sweeping hand-corded pattern on its shaft. Ultra-soft calfskin leather wraps the entire boot for a look that can be worn on any occasion.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: tecovas.id,
  category_id: clothing.id
)

cartwright = Product.create(
  name: "The Cartwright",
  description: "The Cartwright is a timeless cowboy boot with an angled heel, signature Tecovas toe stitching, and an elegant, sweeping hand-corded pattern on its shaft. Ultra-soft calfskin leather wraps the entire boot for a look that can be worn on any occasion.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: tecovas.id,
  category_id: clothing.id
)

dean = Product.create(
  name: "The Dean",
  description: "The Dean is a modern boot designed for all-access versatility. A slim-cut shaft allows for everyday wear with any jeans - and a subtly-designed zipper means 'easy on, easy off' comfort. Handmade with our classic western construction in our signature supple calfskin leather, The Dean may be the most versatile western boot ever.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: tecovas.id,
  category_id: clothing.id
)

dadhat = Product.create(
  name: "Dad Hat",
  description: "The Dad Hat is your versatile ball cap you'll never want to leave home without. It features broken-in, unstructured cotton twill, a low (but not too low) profile, and an adjustable strap.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: tecovas.id,
  category_id: clothing.id
)

truckerhat = Product.create(
  name: "Trucker Hat",
  description: "Rep your favorite western brand in style with the Tecovas Trucker Hat - in three versatile styles. The hats feature unique logos, a mid-profile, universally-appealing fit, and an adjustable snap closure.",
  price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
  store_id: tecovas.id,
  category_id: clothing.id
)


puts "Done!"



private











