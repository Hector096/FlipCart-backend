# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


user1 = User.create!(name: 'chris', email: 'cris68@test.com', password: 'chris123')
user2 = User.create!(name: 'emma', email: 'erm@dev.com', password: 'emma22')

category1 = Category.create!(name: 'Hair Care1')
category2 = Category.create!(name: 'Technology1')
category3 = Category.create!(name: 'Electronics1')

product3 = category3.products.create!(
    name: 'Smart Speaker',
    description: 'Device used to answer calls, control other smart devices and many more',
    img: 'https://www.gannett-cdn.com/presto/2021/08/17/USAT/b80ab0cf-1674-460c-9ba7-ee5680d8a332-image1.jpg?width=660&height=372&fit=crop&format=pjpg&auto=webp',
    price: 99,
    quantity: 1
)

product3 = category2.products.create!(
    name: 'Smart Speaker',
    description: 'Device used to answer calls, control other smart devices and many more',
    img: 'https://www.gannett-cdn.com/presto/2021/08/17/USAT/b80ab0cf-1674-460c-9ba7-ee5680d8a332-image1.jpg?width=660&height=372&fit=crop&format=pjpg&auto=webp',
    price: 99,
    quantity: 1
)

order1 = user1.orders.create(
    product_id: product3.id,
    quantity: 2
)



