number = rand(1..5)

# Variable initialisation
user_number = nil

# while user_number != number
until user_number == number
  puts "nope" unless user_number.nil?
  puts "What is the number ?"
  print "> "
  user_number = gets.chomp.to_i
end

puts "Yay it's #{number}"
