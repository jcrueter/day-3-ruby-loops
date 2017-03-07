counter = 0
loop do
  counter = counter + 1
  if counter == 3
    next        # skip rest of the code in this iteration
  end
  puts "Scrape potato #{counter}."
  if counter == 5
    break       # this will exit the loop
  end
end
