
def acronym(sentence)
  # Split sentence string into words
  words_array = sentence.split(' ')
  p words_array
  # Isolate first letter of each word
  letters_arrays = words_array.map {|word| word[0].upcase }

  # Concatenate letters into acronym
  letters_arrays.join('')
end

# def acronym(sentence)
#   sentence.split(' ').map {|word| word[0].upcase }.join('')
# end

puts acronym("what The Fuck") == "WTF"
puts acronym("") == ""
puts acronym("coucou") == "C"
puts acronym("Societ NATTORT Cheem Feeer") == "SNCF"
puts acronym(" Societ       NATTORT Cheem Feeer") == "SNCF"
