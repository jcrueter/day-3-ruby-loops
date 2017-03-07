def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end

QUANTITY_RICE = 10
AMOUNT_VEGETABLES = "ALLOT"
NUM_CHICKENS = 3

ingredients = [
  { name: 'rice', quantity: QUANTITY_RICE },
  { name: 'vegetables', quantity: AMOUNT_VEGETABLES },
  { name: 'chickens', quantity: NUM_CHICKENS },
  { name: 'bumbu', quantity: 3 },
  { name: 'sambal', quantity: "jar" }
  ]
puts "*** Let's make a lot of Nasi for the guys! ***"
print_divider
puts "You need the following ingredients:"
ingredients.each do |ingredient|
  puts "#{ingredient[:name]}, #{ingredient[:quantity]}"
end
loop do
  puts "\n"
  print_divider
  puts "Do you have all the ingredients you need?"
  answer = gets.chomp.upcase
  if answer == 'N'
    puts "You need to go shopping!"
    print_progress_bar
  elsif answer == 'Y'
    puts "Let's start cooking!"
    break
  else puts "That is not a valid input, so try again."
  end
end
steps = [
  { description: "Cook rice", action: "cook_rice" },
  { description: "Fry chickens", action: "fry_chickens" },
  { description: "Chop vegetables", action: "chop_veggies" },
  { description: "Prepare bumbu", action: "prep_bumbu" },
  { description: "Throw it all together", action: "throw_together" },
  { description: "Add a jar of sambal", action: "add_sambal" },
]
print_divider
puts "Below you can see the steps to follow:"
steps.each_with_index do |step, index|
  puts (index + 1).to_s + ") " + step[:description]
end
def generic_recipe_step
  puts "On it!"
  print_progress_bar
end

def cook_rice
  counter = 0
  while counter < QUANTITY_RICE
    counter += 1
    print "Cook rice grain #{counter}"
    print_progress_bar
  end
end

def peel_chickens
  counter = 0
  while counter < NUM_CHICKENS
    counter += 1
    print "Peel chicken #{counter}"
    print_progress_bar
  end
end

def add_chickens_to_pan
  for counter in 1..NUM_CHICKENS
    print "Add chicken #{counter} to the pan."
    print_progress_bar
  end
end

def ask_if_ready(step, index)
  puts "Are you ready for step #{index + 1}?\n(#{step[:description]})"
  answer = gets.chomp

  answer.upcase == 'Y'
end

steps.each_with_index do |step, index|
  print_divider

  loop do
    ready = ask_if_ready
    break if ready

    puts "OK, I will give you some extra time..."
    print_progress_bar
  end
  send(step[:action])
end
print_divider
puts "Finito! Enjoy."
