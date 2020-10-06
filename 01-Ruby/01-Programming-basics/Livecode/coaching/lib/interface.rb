require_relative "coach_answer"

message = ""

while message != "I am going to work right now!"
  puts "what do you want?"
  message = gets.chomp
  puts coach_answer(message)
end
