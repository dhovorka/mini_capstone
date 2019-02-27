# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# item = ModelName.new({attribute_1: “some value”, attribute_2: “some value”})
#item.save

item = Product.new({name: "Tennis Balls", price: 3, image_url: "https://en.wikipedia.org/wiki/File:Roland_Garros_2012_Ballkid.jpg", description: "These are great, but only if you like tennis. If you don't they're sort of boring"})
item.save
item = Product.new({name: "Wilson Tennis Racquet", price: 250, image_url: "https://en.wikipedia.org/wiki/File:Wilson-logo.svg", description: "This is Federer racquet of choice. Buy it and you will inherit his talent."})
item.save
# #item = ModelName.find_by(attribute_1: “some value”)
# THEN
# item.attribute_2 = "new updated value"
# item.save
