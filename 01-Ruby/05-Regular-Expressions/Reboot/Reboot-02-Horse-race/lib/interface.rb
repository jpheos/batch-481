# interface.rb

# Pseudo-code:

# definir un array(String) de chevaux


# 1. Print welcome and the horses names
#   - puts
# 2. Get user's bet
#   - on lui affiche les choix possibles
#     - puts / index / + 1
#   - choice(index) gets.chomp / - 1
# 3. Run the race 🐴
#   - random + nb horses
# 4. Print
#   - puts

horses = %W[toto titi tata]

puts "Welcome!!!"

horses.each_with_index do |horse, i|
  puts "#{i + 1} - #{horse}"
end

puts "your choice?"
print "> "

choice = gets.chomp.to_i - 1

winner = rand(horses.size)


if choice == winner
  puts "WIN"
else
  puts "LOOSER"
end



