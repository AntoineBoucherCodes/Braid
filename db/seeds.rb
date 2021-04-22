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
  discount_breakpoints: [1000].sample,
  user_id: user_dummy_three.id,
)

tuft = Store.create(
  name: "Tuft & Paw",
  address: Faker::Address.city,
  description: "Beautiful furniture for cats.",
  discount_breakpoints: [1000].sample,
  user_id: user_dummy_three.id
)

quip = Store.create(
  name: "Quip",
  address: Faker::Address.city,
  description: "Healthy oral care habits for life? Quip has re-designed the electric toothbrush and refillable floss.",
  discount_breakpoints: [500].sample,
  user_id: user_dummy_three.id
)


glossier = Store.create(
  name: "Glossier",
  address: Faker::Address.city,
  description: "Skincare and beauty products inspired by the masses? Glossier makes products designed to be every woman's beauty essentials.",
  discount_breakpoints: [600].sample,
  user_id: user_dummy_three.id
)

nuggs = Store.create(
  name: "Nugss",
  address: Faker::Address.city,
  description: "NUGGS utilize an advanced technology that enables a hyper-realistic simulation of the texture & flavor of an animal-based nugget.",
  discount_breakpoints: [200].sample,
  user_id: user_dummy_three.id
)

mejuri = Store.create(
  name: "Mejuri",
  address: Faker::Address.city,
  description: "Fine jewelry for everyday? Mejuri designs luxury jewelry for women minus the traditional markup.",
  discount_breakpoints: [600].sample,
  user_id: user_dummy_three.id
)

upriseart = Store.create(
  name: "Uprise Art",
  address: Faker::Address.city,
  description: "An online art gallery, to reach a new generation of collectors.",
  discount_breakpoints: [700].sample,
  user_id: user_dummy_three.id
)

suvie = Store.create(
  name: "Suvie",
  address: Faker::Address.city,
  description: "Suvie is an automated refrigerator and cooker that makes healthy meals right on schedule.",
  discount_breakpoints: [800].sample,
  user_id: user_dummy_three.id
)

bloomscape = Store.create(
  name: "Bloomscape",
  address: Faker::Address.city,
  description: "Bloomscape makes buying plants easy - delivering healthy plants & setting you up with the tips and tricks to help your plants thrive.",
  discount_breakpoints: [250].sample,
  user_id: user_dummy_three.id
)

allbirds = Store.create(
  name: "Allbirds",
  address: Faker::Address.city,
  description: "The world's most comfortable shoes? Allbirds makes organic footwear that prioritizes simple design as well as sustainable production and distribution.",
  discount_breakpoints: [400].sample,
  user_id: user_dummy_three.id
)

tecovas = Store.create(
  name: "Tecovas",
  address: Faker::Address.city,
  description: "Tecovas is the first direct-to-consumer western brand, selling top-quality, approachably priced cowboy boots, apparel, and accessories.",
  discount_breakpoints: [600].sample,
  user_id: user_dummy.id
)

puts "Creating a few products, hold on..."

#///////Casper////////

haven = Product.create(
  name: "Haven Bed Frame",
  description: "Wrapped in Felted Wool for softness all around.",
  price: "799.99".to_f,
  store_id: casper.id,
  category_id: home.id
)

repose = Product.create(
  name: "Repose Bed Frame",
  description: "Sleek support with softened edges for a warm look.",
  price: "829.99".to_f,
  store_id: casper.id,
  category_id: home.id
)

adjustable = Product.create(
  name: "Adjustable Bed Frame",
  description: "A customizable setup.",
  price: "799.99".to_f,
  store_id: casper.id,
  category_id: home.id
)

originalpillow = Product.create(
  name: "Original Casper Pillow",
  description: "A down-alternative pillow, that’s supportive with a touch of fluff.",
  price: "89.99".to_f,
  store_id: casper.id,
  category_id: home.id
)

foampillow = Product.create(
  name: "Foam Pillow",
  description: "A down-alternative pillow, that’s supportive with a touch of fluff.",
  price: "89.99".to_f,
  store_id: casper.id,
  category_id: home.id
)

#///////Allbirds////////

runningshoes = Product.create(
  name: "Running shoes",
  description: "Our running shoe designed with breathable Tree material.",
  price: "149.99".to_f,
  store_id: allbirds.id,
  category_id: clothing.id
)

everydaysneakers = Product.create(
  name: "Everyday sneakers",
  description: "Our everyday sneaker made with breezy eucalyptus tree.",
  price: "149.99".to_f,
  store_id: allbirds.id,
  category_id: clothing.id
)

hightops = Product.create(
  name: "High-Tops",
  description: "Our classic high top made with breezy eucalyptus tree.",
  price: "169.99".to_f,
  store_id: allbirds.id,
  category_id: clothing.id
)

#///////Tuft & Paw////////

stella = Product.create(
  name: "Stellar",
  description: "Humans appreciate the Stellar for its striking design. For cats, it’s simply an otherworldly escape from the everyday activity of the home.",
  price: "399.99".to_f,
  store_id: tuft.id,
  category_id: pets.id
)

happycamper = Product.create(
  name: "Happy Camper",
  description: "A cat retreat with options. This bed’s precision-cut, faceted panels are finished with wood veneer on one side and scratchable felt on the other.",
  price: "199.99".to_f,
  store_id: tuft.id,
  category_id: pets.id
)

rifuti = Product.create(
  name: "Rifuti",
  description: "Fit for a king yet designed for your cat. Its slatted horizontal stripes and tapered legs reference mid-century modern furniture and classic retro radio designs.",
  price: "219.99".to_f,
  store_id: tuft.id,
  category_id: pets.id
)

#///////Quip////////

electrictoothbrush = Product.create(
  name: "Electric Toothbrush",
  description: "All the makings for a healthy mouth, in styles you’ll love.",
  price: "119.99".to_f,
  store_id: quip.id,
  category_id: wellness.id
)

kidelectrictoothbrush = Product.create(
  name: "Kids Electric Toothbrush",
  description: "Help kids brush better, track progress, and earn rewards.",
  price: "109.99".to_f,
  store_id: quip.id,
  category_id: wellness.id
)

floss = Product.create(
  name: "Refillable Floss Pick",
  description: "Pick forever floss that replaces 180 disposable picks per refill",
  price: "19.99".to_f,
  store_id: quip.id,
  category_id: wellness.id
)

#///////Glosier////////

boybrow = Product.create(
  name: "Boy Brow",
  description: "A brushable, creamy wax that visibly thickens, shapes, and grooms brows into place.",
  price: "39.99".to_f,
  store_id: glossier.id,
  category_id: beauty.id
)

skintint = Product.create(
  name: "Perfecting Skin Tint",
  description: "In the land between bare skin and makeup makeup exists the imperceptible wash of color that is Perfecting Skin Tint.",
  price: "59.99".to_f,
  store_id: glossier.id,
  category_id: beauty.id
)

makeupset = Product.create(
  name: "Makeup Set",
  description: "Our three-step makeup routine for an instantly put-together glow, plus our coated cotton makeup case—together for less in one limited-edition duo.",
  price: "109.99".to_f,
  store_id: glossier.id,
  category_id: beauty.id
)

#///////Nuggs////////

regularnuggs = Product.create(
  name: "Nuggs",
  description: "NUGGS utilizes advanced proteins to achieve superior nutritional content and is finished with a batter that optimizes for flavor and crunchiness, creating the most accurate chicken nugget simulation.",
  price: "12.99".to_f,
  store_id: nuggs.id,
  category_id: food.id
)

spicynuggs = Product.create(
  name: "Spicy Nuggs",
  description: "NUGGS utilizes advanced proteins to achieve superior nutritional content and is finished with a batter that optimizes for flavor and crunchiness, creating the most accurate chicken nugget simulation.",
  price: "13.99".to_f,
  store_id: nuggs.id,
  category_id: food.id
)

#///////Mejuri////////

earring = Product.create(
  name: "Croissant Earrings",
  description: "Looking like a French girl isn’t as difficile as it seems. Handcrafted in vermeil, a thick 18k gold layer on sterling silver. Consider this croissant-inspired hoops to make all your Parisian dreams come true.",
  price: "89.99".to_f,
  store_id: mejuri.id,
  category_id: jewelry.id
)

necklace = Product.create(
  name: "Boyfriend Necklace",
  description: "Your boyfriend denim just found its match. It’s handcrafted in 14k solid gold. Raw, loose, and bold. Wear it every day – whenever, wherever.",
  price: "109.99".to_f,
  store_id: mejuri.id,
  category_id: jewelry.id
)

ring = Product.create(
  name: "Monochrome Dôme Ring",
  description: "The answer to your styling dilemmas? Going monochromatic—always a solid choice. Handcrafted in 18k gold vermeil with an enamel coating and set with prasiolite.",
  price: "109.99".to_f,
  store_id: mejuri.id,
  category_id: jewelry.id
)

#///////Uprise Art////////

togetheragain = Product.create(
  name: "Together Again",
  description: "Three figures are depicted laying together, their bodies, for lack of a better word, bleeding into one another, the lines of their forms breaking apart and rearranging into a single object. Is this a dream about the days when we can lay together, absorbing each others presence, without fear? Is this a dream where those who are lost to us are with us again? Life, at this moment, necessitates a distinct distancing and singularity. And death then comes to encompass all that is opposed to that: togetherness, the interweaving of stories or molecules.",
  price: "399.99".to_f,
  store_id: upriseart.id,
  category_id: art.id
)

coralandgreen = Product.create(
  name: "Coral and Green",
  description: "Matthew Ward (b.1976) approaches pottery through a multi-disciplinary lens. Trained as a painter, he brings techniques traditionally reserved for two dimensional work into the realm of ceramics, incorporating techniques such as stamping and incising, as well as art historical concepts from the mid-20th century and postwar art. Ward is based in Santa Fe, NM and has been featured in publications such as Metropolis and Dwell.",
  price: "399.99".to_f,
  store_id: upriseart.id,
  category_id: art.id
)

clothedinthesun = Product.create(
  name: "Clothed in the Sun",
  description: "My work deals with the human relationship to the natural world.  This series is centered specifically on how the eye registers light, and the meaning and power of color",
  price: "399.99".to_f,
  store_id: upriseart.id,
  category_id: art.id
)

#///////Suvie////////

suvieoven = Product.create(
  name: "Suvie Kitchen Robot",
  description: "Dual-Zone Cooker for Proteins and Vegetables Starch Cooker for Pasta, Rice, and more",
  price: "299.99".to_f,
  store_id: suvie.id,
  category_id: tech.id
)

#///////Bloomscape////////

moneytree = Product.create(
  name: "Mini Money Tree",
  description: "A lively, pet-friendly plant topped with palmate leaves upon a stout trunk. A mini-version of the beloved braided Money Tree",
  price: "89.99".to_f,
  store_id: bloomscape.id,
  category_id: home.id
)

bromeliad = Product.create(
  name: "Bromeliad Pineapple",
  description: "Truly unique pinapple plant with long-lasting blooms",
  price: "109.99".to_f,
  store_id: bloomscape.id,
  category_id: home.id
)

bamboo = Product.create(
  name: "Bamboo Palm",
  description: "Tropical and dramatic with lush dark green fronds",
  price: "79.99".to_f,
  store_id: bloomscape.id,
  category_id: home.id
)

#///////Tecovas////////

earl = Product.create(
  name: "The Earl",
  description: "The Earl is a versatile roper boot with universal appeal. Designed to be both practical and stylish, it features a heel shorter than that of a traditional cowboy boot. The vamp is left unadorned in order to showcase the ultra-soft, hand-burnished calfskin leather.",
  price: "149.99".to_f,
  store_id: tecovas.id,
  category_id: clothing.id
)

cartwright = Product.create(
  name: "The Cartwright",
  description: "The Cartwright is a timeless cowboy boot with an angled heel, signature Tecovas toe stitching, and an elegant, sweeping hand-corded pattern on its shaft. Ultra-soft calfskin leather wraps the entire boot for a look that can be worn on any occasion.",
  price: "139.99".to_f,
  store_id: tecovas.id,
  category_id: clothing.id
)

dean = Product.create(
  name: "The Dean",
  description: "The Dean is a modern boot designed for all-access versatility. A slim-cut shaft allows for everyday wear with any jeans - and a subtly-designed zipper means 'easy on, easy off' comfort. Handmade with our classic western construction in our signature supple calfskin leather, The Dean may be the most versatile western boot ever.",
  price: "149.99".to_f,
  store_id: tecovas.id,
  category_id: clothing.id
)

dadhat = Product.create(
  name: "Dad Hat",
  description: "The Dad Hat is your versatile ball cap you'll never want to leave home without. It features broken-in, unstructured cotton twill, a low (but not too low) profile, and an adjustable strap.",
  price: "29.99".to_f,
  store_id: tecovas.id,
  category_id: clothing.id
)


#////////////Photos//////////

image1 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849894/Braid/1.%20Casper/Casper_Store_wntbts.png')
casper.photo.attach(io: image1, filename: 'image.png', content_type: 'image/png')

  productimage1 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849893/Braid/1.%20Casper/haven-bed-frame_hmdte9.jpg')
  haven.photos.attach(io: productimage1, filename: 'image.png', content_type: 'image/png')

  productimage2 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849893/Braid/1.%20Casper/repose-bed-frame_ydpenh.jpg')
  repose.photos.attach(io: productimage2, filename: 'image.png', content_type: 'image/png')

  productimage3 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849893/Braid/1.%20Casper/adjustable-bed-frames_cmrzxx.jpg')
  adjustable.photos.attach(io: productimage3, filename: 'image.png', content_type: 'image/png')

  productimage4 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849893/Braid/1.%20Casper/pillows-original-01_n5rosv.jpg')
  originalpillow.photos.attach(io: productimage4, filename: 'image.png', content_type: 'image/png')

  productimage5 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849893/Braid/1.%20Casper/pillows-original-01_n5rosv.jpg')
  foampillow.photos.attach(io: productimage5, filename: 'image.png', content_type: 'image/png')

image2 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849895/Braid/2.%20Allbirds/Screen_Shot_2021-04-07_at_8.37.36_PM_garmsb.png')
allbirds.photo.attach(io: image2, filename: 'image.png', content_type: 'image/png')

  productimage6 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849894/Braid/2.%20Allbirds/Runners_bo71ws.jpg')
  runningshoes.photos.attach(io: productimage6, filename: 'image.png', content_type: 'image/png')

  productimage7 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849894/Braid/2.%20Allbirds/Sneakers_fvqsry.jpg')
  everydaysneakers.photos.attach(io: productimage7, filename: 'image.png', content_type: 'image/png')

  productimage8 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849895/Braid/2.%20Allbirds/High-Tops_lpznms.webp')
  hightops.photos.attach(io: productimage8, filename: 'image.png', content_type: 'image/png')

image3 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617850430/Braid/3.%20Tuft%20and%20Paw/Screen_Shot_2021-04-07_at_10.53.27_PM_nzuqev.png')
tuft.photo.attach(io: image3, filename: 'image.png', content_type: 'image/png')

  productimage9 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849897/Braid/3.%20Tuft%20and%20Paw/Stellar_iajppi.jpg')
  stella.photos.attach(io: productimage9, filename: 'image.png', content_type: 'image/png')

  productimage10 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849896/Braid/3.%20Tuft%20and%20Paw/HappyCamper_d9kysv.jpg')
  happycamper.photos.attach(io: productimage10, filename: 'image.png', content_type: 'image/png')

  productimage11 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849896/Braid/3.%20Tuft%20and%20Paw/Rifiuti_usoydn.jpg')
  rifuti.photos.attach(io: productimage11, filename: 'image.png', content_type: 'image/png')

image4 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849896/Braid/4.%20Quip/Screen_Shot_2021-04-07_at_8.39.33_PM_yq93ad.png')
quip.photo.attach(io: image4, filename: 'image.png', content_type: 'image/png')

  productimage12 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849893/Braid/4.%20Quip/Toothbrush_f6ei6x.jpg')
  electrictoothbrush.photos.attach(io: productimage12, filename: 'image.png', content_type: 'image/png')

  productimage13 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849894/Braid/4.%20Quip/Kid_Tootbrush_t4bybu.jpg')
  kidelectrictoothbrush.photos.attach(io: productimage13, filename: 'image.png', content_type: 'image/png')

  productimage14 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849896/Braid/4.%20Quip/Floss_mipxup.jpg')
  floss.photos.attach(io: productimage14, filename: 'image.png', content_type: 'image/png')

image5 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849898/Braid/5.%20Glossier/Screen_Shot_2021-04-07_at_8.38.59_PM_engxkc.png')
glossier.photo.attach(io: image5, filename: 'image.png', content_type: 'image/png')

  productimage15 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849897/Braid/5.%20Glossier/Boy_Brow_duyv8e.jpg')
  boybrow.photos.attach(io: productimage15, filename: 'image.png', content_type: 'image/png')

  productimage16 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849896/Braid/5.%20Glossier/Perfecting_Skin_Tint_gmedys.jpg')
  skintint.photos.attach(io: productimage16, filename: 'image.png', content_type: 'image/png')

  productimage17 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849897/Braid/5.%20Glossier/Makeup_Set_opkukc.jpg')
  makeupset.photos.attach(io: productimage17, filename: 'image.png', content_type: 'image/png')

image6 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849898/Braid/6.%20Nuggs/Screen_Shot_2021-04-07_at_9.17.16_PM_q2ngh1.png')
nuggs.photo.attach(io: image6, filename: 'image.png', content_type: 'image/png')

  productimage18 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849898/Braid/6.%20Nuggs/Nuggs_vm09bz.png')
  regularnuggs.photos.attach(io: productimage18, filename: 'image.png', content_type: 'image/png')

  productimage19 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849898/Braid/6.%20Nuggs/Spicy_Nuggs_gdivk7.png')
  spicynuggs.photos.attach(io: productimage19, filename: 'image.png', content_type: 'image/png')

image7 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849898/Braid/7.%20Mejuri/Screen_Shot_2021-04-07_at_9.24.48_PM_vpmuxl.png')
mejuri.photo.attach(io: image7, filename: 'image.png', content_type: 'image/png')

  productimage20 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849898/Braid/7.%20Mejuri/CroissantDomeHoops_earrings_v_alt1_jranth.jpg')
  earring.photos.attach(io: productimage20, filename: 'image.png', content_type: 'image/png')

  productimage21 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849898/Braid/7.%20Mejuri/BoyfriendBold_Necklace_yg_alt1-0253_eortev.jpg')
  necklace.photos.attach(io: productimage21, filename: 'image.png', content_type: 'image/png')

  productimage22 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849898/Braid/7.%20Mejuri/EnamelGemstone_DomeRing_GreenPrasiolite_v_alt1_cjaqaf.jpg')
  ring.photos.attach(io: productimage22, filename: 'image.png', content_type: 'image/png')

image8 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849899/Braid/8.%20Uprise%20Art/Screen_Shot_2021-04-07_at_9.32.36_PM_nz1x9i.png')
upriseart.photo.attach(io: image8, filename: 'image.png', content_type: 'image/png')

  productimage23 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849899/Braid/8.%20Uprise%20Art/Screen_Shot_2021-04-07_at_9.32.36_PM_nz1x9i.png')
  togetheragain.photos.attach(io: productimage23, filename: 'image.png', content_type: 'image/png')

  productimage24 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849899/Braid/8.%20Uprise%20Art/Coral_and_Green_pkxpzo.jpg')
  coralandgreen.photos.attach(io: productimage24, filename: 'image.png', content_type: 'image/png')

  productimage25 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849899/Braid/8.%20Uprise%20Art/Clothed_in_the_Sun_imfm76.jpg')
  clothedinthesun.photos.attach(io: productimage25, filename: 'image.png', content_type: 'image/png')

image9 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849899/Braid/9.%20Suvie/Screen_Shot_2021-04-07_at_9.51.59_PM_qsogjv.png')
suvie.photo.attach(io: image9, filename: 'image.png', content_type: 'image/png')

  productimage26 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849899/Braid/9.%20Suvie/Suvie_Oven_y1iszp.png')
  suvieoven.photos.attach(io: productimage26, filename: 'image.png', content_type: 'image/png')

image10 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849900/Braid/10.%20Bloomscape/Screen_Shot_2021-04-07_at_9.56.36_PM_qc74y5.png')
bloomscape.photo.attach(io: image10, filename: 'image.png', content_type: 'image/png')

  productimage27 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849900/Braid/10.%20Bloomscape/Screen_Shot_2021-04-07_at_10.00.06_PM_gx927o.png')
  moneytree.photos.attach(io: productimage27, filename: 'image.png', content_type: 'image/png')

  productimage28 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849901/Braid/10.%20Bloomscape/Screen_Shot_2021-04-07_at_9.59.39_PM_icjw7f.png')
  bromeliad.photos.attach(io: productimage28, filename: 'image.png', content_type: 'image/png')

  productimage29 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849900/Braid/10.%20Bloomscape/Screen_Shot_2021-04-07_at_10.01.01_PM_zpigx2.png')
  bamboo.photos.attach(io: productimage29, filename: 'image.png', content_type: 'image/png')

image11 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849902/Braid/11.%20Tecovas/Screen_Shot_2021-04-07_at_8.36.55_PM_ycvtef.png')
tecovas.photo.attach(io: image11, filename: 'image.png', content_type: 'image/png')

  productimage30 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849901/Braid/11.%20Tecovas/Earl-Mens-Roper-Calfskin-Bourbon-Profile-gallery_608cc850-3474-4624-a8b6-8ad7d0246e65_1280x1280.progressive_vxyybm.jpg')
  earl.photos.attach(io: productimage30, filename: 'image.png', content_type: 'image/png')

  productimage31 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849901/Braid/11.%20Tecovas/Cartwright-Mens-Calfskin-Cowboy-Midnight-Profile-Gallery_8caa5a26-5d8a-4d3d-95db-a2c838cec37e_1280x1280.progressive_lwymzp.jpg')
  cartwright.photos.attach(io: productimage31, filename: 'image.png', content_type: 'image/png')

  productimage32 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849902/Braid/11.%20Tecovas/Dean-Mens-Calfskin-Zip-Natural-Profile-Gallery_1280x1280.progressive_cmwhji.jpg')
  dean.photos.attach(io: productimage32, filename: 'image.png', content_type: 'image/png')

  productimage33 = URI.open('https://res.cloudinary.com/dfzpux58o/image/upload/v1617849901/Braid/11.%20Tecovas/Hat-Dad-GreenPatch-Front-gallery_1280x1280.progressive_pdy1im.jpg')
  dadhat.photos.attach(io: productimage33, filename: 'image.png', content_type: 'image/png')


puts "Done!"



private











