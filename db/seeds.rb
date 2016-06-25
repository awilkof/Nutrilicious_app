# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
nutrient_types = NutrientType.create(
  [
    { name: 'protein', description: 'tbd' },
    { name: 'fat', description: 'tbd' },
    { name: 'carbohydrate', description: 'tbd'}
  ]
)
