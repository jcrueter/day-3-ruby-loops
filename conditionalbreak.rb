counter = 0
loop do
  counter = counter + 1
  puts "Scrape potato #{counter}."
  if counter == 5
    break       # this will exit the loop
  end
end
