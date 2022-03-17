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

Product4 = category4.products.create!(
    name: 'Hiking Pants',
    description: ' Designed for hiking and other outdoor activities, these shorts will take you everywhere you need to go.
    This pant features slit pockets, made with comfortable fabric',
    img: 'https://m.media-amazon.com/images/I/71aOwJ1mqCS._AC_UL320_.jpg',
    price: 12,
    quantity: 3
)

Product5 = category4.products.create!(
    name: 'High Rise Tapered Jean',
    description: 'Classic high rise taper jean sits at natural waist with functional pockets, easy zipper fly and belt loops for the fit you love',
    img: 'https://m.media-amazon.com/images/I/51fLTno0lJL._AC_UL320_.jpg',
    price: 19,
    quantity: 2
)

Product6 = category4.products.create!(
    name: 'Long Sleeve Solar Guard Shirt',
    description: 'High gauge, high stretch, base layer',
    img: 'https://m.media-amazon.com/images/I/911MK3xu2TL._AC_UL320_.jpg',
    price: 36,
    quantity: 1
)

Product7 = category5.products.create!(
    name: 'Zodiac women logans',
    description: 'Rubber sole and extra cushioning',
    img: 'https://m.media-amazon.com/images/I/71godJxQ2ZL._AC_UL320_.jpg',
    price: 99,
    quantity: 2
)

Product8 = category5.products.create!(
    name: 'Lacoste Sneakers',
    description: 'Green embroidered crocodile on the quarter',
    img: 'https://m.media-amazon.com/images/I/71appN3Kf7L._AC_UL320_.jpg',
    price: 49,
    quantity: 1
)


order1 = user1.orders.create(
    product_id: product3.id,
    quantity: 2
)



