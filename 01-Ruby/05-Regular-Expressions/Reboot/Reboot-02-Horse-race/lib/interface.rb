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

HORSES = %W[toto titi tata alfred aa bb cc dd ee]


def print_result(win)
  if win
    puts "WIN"
  else
    puts "LOOSER"
  end
end

def user_choice
  HORSES.each_with_index do |horse, i|
    puts "#{i + 1} - #{horse}"
  end
  puts "your choice?"
  print "> "
  gets.chomp.to_i - 1
end

def play?
  choice = user_choice
  winner = rand(HORSES.size)
  win = choice == winner
  print_result(win)
  win
end

def continue?(balance)
  return false if balance < 10

  puts "Do you want continue to play? [Y/N]"
  gets.chomp == 'Y'
end

def print_balance(balance)
  puts "Your balance: #{balance}€"
end

balance = 20
running = true

puts "Welcome!!!"

while running
  win = play?
  balance += win ? 40 : -10
  print_balance(balance)
  running = continue?(balance)
end

puts "bye bye"
