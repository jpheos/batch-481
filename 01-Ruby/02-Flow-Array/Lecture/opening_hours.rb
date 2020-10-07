puts "Hello, what time is it?"
print "> "

hour = gets.chomp.to_i

morning = 8 <= hour && hour < 12
afternoon = 14 <= hour && hour <= 17

result = if morning || afternoon
  "It's open"
else
  "It's closed"
end

puts result
