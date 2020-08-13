# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

puts "Creating Cocktails..."
long_island = Cocktail.create(name: "Long Island")
w_coke = Cocktail.create(name: "Whisky Coke")
sontb = Cocktail.create(name: "Sex On The Beach")

puts "Creating ingredients..."
i_lemon = Ingredient.create(name: "lemon")
i_ice = Ingredient.create(name: "ice")
i_mint = Ingredient.create(name: "mint leaves")
i_icetea = Ingredient.create(name: "ice tea")

puts "Creating doses..."
Dose.create(description: "50mg", cocktail: long_island, ingredient: i_lemon)
Dose.create(description: "25cl", cocktail: w_coke, ingredient: i_ice)
Dose.create(description: "3mg", cocktail: sontb, ingredient: i_mint)
Dose.create(description: "60cl", cocktail: long_island, ingredient: i_icetea)
puts "Finished!"
