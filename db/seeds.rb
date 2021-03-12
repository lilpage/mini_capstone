# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Supplier.destroy_all

product = Product.create({ name: "tree frog", description: "A small green frog, found in trees. Cute. Small. Largely inedible.", price: 20 })
product = Product.create({ name: "glass frog", description: "Whats on the inside of that frog? Wonder no more! Look right into one of these fellas, and check it out. (Ew, guts!).", price: 45 })
product = Product.create({ name: "warty toad", description: "Contrary to common belief, a the warts on a toad are not true warts, nor infectous to humans. Jury's still out on if kissing one will turn it into a prince though.", price: 9.99 })
product = Product.create({ name: "poison dart frogs", description: "NOT FOR HUMAN CONSUMPTION UNDER THREAT OF DEATH. Very colorful and pretty!", price: 60 })

supplier = Supplier.create({ name: "Frogs R We", email: "frogsrwe@example.com", phone_number: "555-555-5555"})
supplier = Supplier.create({ name: "The Toad Experts", email: "tte@example.com", phone_number: "555-000-0000"})

category = Category.create(category: "Frogs" )
category = Category.create(category: "Toads" )