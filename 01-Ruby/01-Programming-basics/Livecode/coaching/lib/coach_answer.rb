def coach_answer(your_message)
  # TODO: return coach answer to your_message
  if your_message.end_with?("?")
    "Silly question, get dressed and go to work!"
  elsif your_message.downcase == "i am going to work right now!"
    ""
  else
    "I don't care, get dressed and go to work!"
  end
end

# def coach_answer_enhanced(your_message)

#   answer = coach_answer(your_message)

#   if your_message == your_message.upcase && your_message != "I AM GOING TO WORK RIGHT NOW!"
#     return "I can feel your motivation! #{answer}"
#   else
#     return answer
#   end
# end


def coach_answer_enhanced(your_message)
  answer = coach_answer(your_message)
  return answer if your_message != your_message.upcase || answer == ""

  "I can feel your motivation! #{answer}"
end


# p coach_answer_enhanced("COUCOU") #=> "I can feel your motivation! I don't care, get dressed and go to work!"
# p coach_answer_enhanced("COUCOU?") #=> "I can feel your motivation! Silly question, get dressed and go to work!"
# p coach_answer_enhanced("coucou") #=> "I don't care, get dressed and go to work!"
# p coach_answer_enhanced("coucou?") #=> "Silly question, get dressed and go to work!"
# p coach_answer_enhanced("I am going to work right now!") #=> ''
# p coach_answer_enhanced("I AM GOING TO WORK RIGHT NOW!") #=> ''
# p coach_answer_enhanced("I AM going to work right now!") #=> ''


