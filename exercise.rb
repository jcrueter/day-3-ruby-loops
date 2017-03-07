counter = 0
loop do
  counter = counter + 1
  if counter.odd?
    next
  end
  puts counter
  if counter == 10
    break
  end
end
