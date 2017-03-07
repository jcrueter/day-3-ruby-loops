friends = [
  { name: "Wouter", city: "Alkmaar", role: "CEO" },
  { name: "Rembert", city: "Hilversum", role: "COO"},
  { name: "Miriam", city: "Amsterdam", role: "Wizard"},
  { name: "Arno", city: "UNKNOWN", role: "Teacher"},
  { name: "Michiel", city: "Oude Wetering", role: "Host"}
]
friends.each do |friend|
#  puts "We need #{ingredient[:quantity]} #{ingredient[:name]}."
  puts "#{friend[:name]} works at Codaisseur as #{friend[:role]}, and comes from #{friend[:city]}."
end
