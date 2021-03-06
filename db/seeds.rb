# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.delete_all

ingredients = open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read

puts "Beginning seed..."
i = 0
JSON.parse(ingredients).each do |ingredi|
 ingredi[1].each do |ingredient|
 i += 1
   @item = ingredient

     Ingredient.create ({
       "name":  @item["strIngredient1"]
     })
 puts "Ingredient \##{i} added."
 puts "#{ingredient}"
end
end

puts "Seed end"
