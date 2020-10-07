HANDS = %w[rock paper scissors]

# Define rules
def player_outcome(player_hand, computer_hand)
  return 'draw' if player_hand == computer_hand

  # win, draw, or 'lose'
  condition1 = player_hand == 'rock' && computer_hand == 'scissors'
  condition2 = player_hand == 'paper' && computer_hand == 'rock'
  condition3 = player_hand == 'scissors' && computer_hand == 'paper'

  if condition1 || condition2 || condition3
    'win'
  else
    'lose'
  end
end

def play_one_game
  # Randomise computer hand, and store in variable
  computer_hand = HANDS.sample

  # Ask user hand, and store in variable, make sure input is valid
  player_hand = nil
  until HANDS.include? player_hand
    puts "Hello, #{HANDS.join(', ')}?"
    print "> "
    player_hand = gets.chomp
  end

  outcome = player_outcome(player_hand, computer_hand)

  # if time, replay
  puts "Computer played #{computer_hand} : #{outcome}"
  outcome
end

def user_replay?
  puts "Do you want to replay? enter 'q' to quit, anything else to replay"
  gets.chomp != 'q'
end
