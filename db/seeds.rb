# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cocktail.create(name: "Blue Lagoon")
Cocktail.create(name: "Redexp")
Cocktail.create(name: "Sunburn")

Ingredient.create(name: "orange")
Ingredient.create(name: "lime")
Ingredient.create(name: "vodka")
Ingredient.create(name: "whisky")
Ingredient.create(name: "gin")

Dose.create(cocktail_id: 1, ingredient_id: 3, description: "10cl")
Dose.create(cocktail_id: 2, ingredient_id: 3, description: "10cl")
Dose.create(cocktail_id: 3, ingredient_id: 3, description: "10cl")
