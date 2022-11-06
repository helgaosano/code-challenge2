# This will delete any existing rows from the Product and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Product.destroy_all
User.destroy_all
Review.destroy_all

puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)
user1.favorite_product
user3.favorite_product
user1.remove_reviews(product2)


puts "Creating products..."
product1 = Product.create(name: "Stapler", price: 10)
product2 = Product.create(name: "Whiteboard", price: 15)
product3 = Product.create(name: "Dry Erase Markers", price: 5)
product4 = Product.create(name: "Ballpoint Pens", price: 2)
product5 = Product.create(name: "Scotch Tape", price: 3)
product1.print_all_reviews
product3.print_all_reviews
product3.average_rating

puts "Creating reviews..."
# *****************************************************************
# * TODO: create reviews! Remember, a review belongs to a product *
# * and a review belongs to an user.                              *
# *****************************************************************
# Create Reviews Here
review1 = Review.create(name: "Stationery1", star_rating: 10, comment: "I love it!!Cannot wait to shop again", product_id: 1, user_id: 1)
review2 = Review.create(name: "Stationery2", star_rating: 4, comment: "Not to my expectations", product_id: 2, user_id: 1)
review3 = Review.create(name: "Stationery3", star_rating: 8, comment: "This is super cool", product_id: 3, user_id: 2)
review4 = Review.create(name: "Stationery4", star_rating: 9, comment: "I love this item. Will definitely come for more!", product_id: 5, user_id: 3)
review5 = Review.create(name: "Stationery5", star_rating: 2, comment: "This is disappointing.The item is faulty. Please check your items before selling it to customers. ", product_id: 3, user_id: 4)
review3.print_review
review4.print_review


puts "Seeding done!"