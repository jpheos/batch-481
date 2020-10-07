puts "How old are you ?"
print '> '

age = gets.chomp.to_i

if age >= 18
  puts "You can vote"
else
  puts "nope"
end
