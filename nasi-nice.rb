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
