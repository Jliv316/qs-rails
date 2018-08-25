# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
foods = ['Chicken', 'Bread', 'Candy', 'Baby Back Ribs', 'Carrots']
calories = [100, 250, 500, 230, 120]
i = 0
while i < foods.count
  Food.create(name: foods[i], calories: calories[i])
  i += 1
end

meals = ["Breakfast", "Snack", "Lunch", "Dinner"]

meals.each do |meal|
  Meal.create(name: meal)
end