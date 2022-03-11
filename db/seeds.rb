# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


chris = User.create!(name: 'chris', email: 'chris984568@test.com', password: 'chris123')
category1 = Category.create!(name: "Bottle")
product1 = category1.products.create!(name:"Water bottle",img:"https://images.unsplash.com/photo-1606342384762-ddf691b59885?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",price: 500, description: "Rolex Water bottle from switz alps",quantity: 10);
order1 = chris.orders.create!(product_id: product1.id,quantity:2);