# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.create(name: "Kevin Hart")
user_2 = User.create(name: "Michael Jordan")
user_3 = User.create(name: "Marcos Maidana")
user_4 = User.create(name: "Canelo Alvares")

review_1 = Review.create(restaurant_name: "Joeys", food_name: "Bacon cheese burger", food_review: "Super good!", service_review: "very kind waiter!", user: user_1)
review_1 = Review.create(restaurant_name: "Bjs", food_name: "Pazookie", food_review: "Best afternoon dessert", service_review: "slow service, but great food", user: user_2)
review_1 = Review.create(restaurant_name: "Moctezuma", food_name: "Flautas de pollo", food_review: "Best mexican flautas in Tukwilla!", service_review: "Service is very fast, and kind waitress", user: user_3)
review_1 = Review.create(restaurant_name: "Mcdonalds", food_name: "Mc Chicken", food_review: "tasted very dry", service_review: "dont come here!!", user: user_4)
