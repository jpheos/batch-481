def tag(tag_name, content, attributes = {})
  attributes_string = attributes.map do|key, value|
    " #{key}='#{value}'"
  end.join

  "<#{tag_name}#{attributes_string}>#{content}</#{tag_name}>"
end

# attributes_string = ''
#  attributes.each do |key, value|
#  attributes_string << " #{key}='#{value}'"
# end

puts tag("h1", "Hello world")
# => <h1>Hello world</h1>

puts tag("h1", "Hello world", { class: "bold" })
# => <h1 class='bold'>Hello world</h1>

puts tag("a", "Le Wagon", href: "http://lewagon.org", class: "btn" )
# => <a href='http://lewagon.org' class='btn'>Le Wagon</a>

# plusieurs hash en parametres
