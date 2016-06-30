# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
nutrient_types = NutrientType.find_or_create(
  [
    { name: 'protein', description: 'tbd' },
    { name: 'fat', description: 'tbd' },
    { name: 'carbohydrate', description: 'tbd'}
  ]
)

foods = Food.create([
  # Use the attributes from the food rb to seed in the table here
  # {name: 'Yogurt', description: 'Greek Yorgurt', serving_size: 8, u_of_m: 'm'},
  ])
