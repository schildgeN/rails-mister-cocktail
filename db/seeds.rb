# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

puts "Cleaning database..."
Cocktail.destroy_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients = open(url).read
results = JSON.parse(ingredients)

puts "Creating ingredients..."
results["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end

puts "Creating Cocktails..."
cocktails = ("odkeau, Bloody Mary, Russe blanc, Octobre rouge, Russe noir, Screwdriver, Trou noir, Chien enragé, PPP, Sex on the beach, Blue Lagoon, Cosmopolitan").split(",")
cocktails.each do |cocktail|
  Cocktail.create(name: cocktail)
end

# i_lemon = Ingredient.create(name: "lemon")
# i_ice = Ingredient.create(name: "ice")
# i_mint = Ingredient.create(name: "mint leaves")
# i_icetea = Ingredient.create(name: "ice tea")

# Dose.create(description: "50mg", cocktail: long_island, ingredient: i)
# Dose.create(description: "25cl", cocktail: w_coke, ingredient: i)
# Dose.create(description: "3mg", cocktail: sontb, ingredient: i)
# Dose.create(description: "60cl", cocktail: long_island, ingredient: i)
puts "Finished!"
