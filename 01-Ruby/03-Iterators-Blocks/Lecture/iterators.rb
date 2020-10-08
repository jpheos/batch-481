peoples = ["toto Dupont", "lili Paul", "tata Pupond"]

# peoples.each do |people|
#   puts people
# end

# res = peoples.each_with_index do |people, i|
#   puts "#{i} - Salut je suis #{people}"
# end


# res = peoples.map do |people|
#   people.upcase
# end

# res = peoples.map do |people|
#   people.split.last.upcase
# end

# res = peoples.count do |people|
#   people.split.last.downcase.start_with? 'd'
# end

# p res

# res = peoples.select { |people| people.start_with? 't' }

# p res


upcased_first_names = peoples.map do |people|
  first_name = people.split.first
  upcased_first_name = first_name.upcase
  puts "[DEBUG] #{people}'s first name is #{upcased_first_name}"

  upcased_first_name
end

p upcased_first_names



