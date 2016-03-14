# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
food_types = %w{Curry Dessert Sides Breakfast}
food_types.each do |type|
  FoodType.where(name: type).first_or_create
end

food_preferences = %w{Vegetarian Vegan Meat Dairy}
food_preferences.each do |preference|
  FoodPreference.where(name: preference).first_or_create
end

cuisines = %w{Italian Mexican Indian Chinese}
cuisines.each do |cuisine|
  Cuisine.where(name: cuisine).first_or_create
end
