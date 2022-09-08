# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
Product.create(title: 'V-type Shirt', price: 20, tag: '12345678', discount: 1, category: 'clothes')
Product.create(title: 'Jacket', price: 26, tag: '12345678', discount: 4, category: 'clothes')
Product.create(title: 'Shoes', price: 29, tag: '12345678', discount: 2, category: 'fashion')
Product.create(title: 'Mobile', price: 300, tag: '12345678', discount: 10, category: 'electronics')