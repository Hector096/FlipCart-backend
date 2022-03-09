# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


chris = User.create!(name: 'chris', email: 'chris6@test.com', password: 'chris123')
category1 = Category.create!(name: "Bottle")
product1 = Product.create!(name:"Water bottle",category_id:category1.id,price: 500, description: "Rolex Water bottle from switz alps",quantity: 10);
order1 = Order.create!(product_id: product1.id,quantity:2,user_id:chris.id);