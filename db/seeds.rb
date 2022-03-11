# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


user1 = User.create!(name: 'chris', email: 'chris984568@test.com', password: 'chris123')
user2 = User.create!(name: 'emma', email: 'emma@dev.com', password: 'emma22')

category1 = Category.create!(name: 'Hair Care')
category2 = Category.create!(name: 'Technology')






