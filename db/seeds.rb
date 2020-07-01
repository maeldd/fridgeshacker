require 'json'

filepath = 'recipes.json'

serialized_recipes = File.read(filepath)

recipes = JSON.parse(serialized_recipes)

puts 'Creating recipes...'
recipes["recipes"].each do |recipe|
  Recipe.create!(recipe)
end
puts 'Finished!'
