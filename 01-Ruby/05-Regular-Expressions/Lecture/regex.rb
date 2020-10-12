# text = "Lorem ipsum dolor sit amet consecthelloetur adipisicing elit. Iure vero soluta accusamus magnam iste sint ex exercitationem voluptatem, dolorem cupiditate accusantium quidem quos sit, alias qui quibusdam rem aliquid explicabo."


# if text =~ /hello/
#   puts "j'ai trouvé hello"
# end


# match_data = "567 John Doe".match(/(\w+) (\w+)$/)

# p match_data.class
# p match_data[0]
# p match_data[1]
# p match_data[2]

# p "-------------------------"



# match_data = "John Doe".match(/^(?<firstname>\w+) (?<lastname>\w+)$/)

# p match_data.class
# p match_data[0]
# p match_data["firstname"]
# p match_data[:firstname]
# p match_data[:lastname]

# p "-------------------------"



p "Let's play tic tac toe".scan(/t\w{2}/)
