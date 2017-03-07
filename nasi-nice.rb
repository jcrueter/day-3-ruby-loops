#0. Helper Methods
def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end

#1. Defining the Ingredients
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

#2. Printing Out the Ingredients
puts "*** Let's make a lot of Nasi for the guys! ***"
print_divider
puts "You need the following ingredients:"
ingredients.each do |ingredient|
  puts "#{ingredient[:name]}, #{ingredient[:quantity]}"
end

#3. Asking user if he got all ingredients
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

#4. Defining the Recipe Steps
steps = [
  { description: "Cook rice", action: "cook_rice" },
  { description: "Fry chickens", action: "fry_chickens" },
  { description: "Add chickens to pan", action: "add_chickens_to_pan" },
  { description: "Chop vegetables", action: "chop_veggies" },
  { description: "Prepare bumbu", action: "prep_bumbu" },
  { description: "Throw it all together", action: "throw_together" },
  { description: "Add a jar of sambal", action: "add_sambal" },
]

#5. Printing Out the Steps
print_divider
puts "Below you can see the steps to follow:"
steps.each_with_index do |step, index|
  puts (index + 1).to_s + ") " + step[:description]
end

#6. Defining the Steps Actions
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

def fry_chickens
  counter = 0
  while counter < NUM_CHICKENS
    counter += 1
    print "Fry chicken #{counter}"
    print_progress_bar
  end
end

def add_chickens_to_pan
  for counter in 1..NUM_CHICKENS
    print "Add chicken #{counter} to the pan."
    print_progress_bar
  end
end

def chop_veggies
  print "Chop the vegetables"
  print_progress_bar
end

def prep_bumbu
  print "Prepare the bumbu"
  print_progress_bar
end

def throw_together
  print "Throw it all together!"
  print_progress_bar
end

def add_sambal
  print "Add a jar of sambal. Without the jar itself."
  print_progress_bar
end


#7. Asking User if Ready for Next Step
def ask_if_ready(step, index)
  puts "Are you ready for step #{index + 1}?\n(#{step[:description]})"
  answer = gets.chomp

  answer.upcase == 'Y'
end

#8. Iterating through Each of the Steps
steps.each_with_index do |step, index|
  print_divider

  loop do
    ready = ask_if_ready(step, index)
    break if ready

    puts "OK, I will give you some extra time..."
    print_progress_bar
  end
  send(step[:action])
end

#9. Done With Cooking
print_divider
puts "Finito! Enjoy."
