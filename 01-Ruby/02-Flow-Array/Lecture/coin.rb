puts "Heads or tails?"

choice = gets.chomp

coin_flip = ['heads', 'tails'].sample

result = choice == coin_flip ? 'You win' : 'You lose'

puts "#{result}, the flip was #{coin_flip}"
