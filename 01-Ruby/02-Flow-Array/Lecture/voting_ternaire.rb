puts "How old are you ?"
print '> '

age = gets.chomp.to_i

response = age >= 18 ? "You can vote" : "nope"

puts response
