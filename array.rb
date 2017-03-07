ingredients = [
  { name: 'potatoes', quantity: 5 },
  { name: 'eggs', quantity: 6 },
  { name: 'onion', quantity: 1 },
  { name: 'oil', quantity: 'some' },
  { name: 'salt', quantity: 'some' },
]
ingredients.each do |ingredient|
  ingredient.each do |key, value|
    puts "Ingredient's #{key} is #{value}."
  end
  puts "*" * 40
end

puts "You need the following ingredients to cook a Spanish Omelette:"

ingredients.each do |ingredient|
  puts "We need #{ingredient[:quantity]} #{ingredient[:name]}."
end
