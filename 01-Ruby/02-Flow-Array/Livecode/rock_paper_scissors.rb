require_relative 'methods'

NUMBER_OF_WINS_TO_WIN = 3

# replay = true
# while replay
#   play_one_game
#   replay = user_replay?
# end

user_score = 0
computer_score = 0

until [computer_score, user_score].any? { |score| score == NUMBER_OF_WINS_TO_WIN }
  case play_one_game
  when 'win'
    user_score += 1
  when 'lose'
    computer_score += 1
  end
  puts "Your score: #{user_score}"
  puts "Computer score: #{computer_score}"
  puts
end

winner = computer_score == 3 ? 'Computer' : "You"

puts "The winner is #{winner} !"
