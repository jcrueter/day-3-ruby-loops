def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end

QUANTITY_RICE = "TONS"
AMOUNT_VEGETABLES = "ALLOT"
NUM_CHICKENS = 2

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
  else puts "That is not a valid input, so try again."
  end
end
