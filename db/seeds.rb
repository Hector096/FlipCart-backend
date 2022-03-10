# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


chris = User.create!(name: 'chris', email: 'chris988@test.com', password: 'chris123')
category1 = Category.create!(name: "Method")
product1 = category1.products.create!(name:"Water bottle",price: 500, description: "Rolex Water bottle from switz alps",quantity: 10);
order1 = chris.orders.create!(product_id: product1.id,quantity:2);