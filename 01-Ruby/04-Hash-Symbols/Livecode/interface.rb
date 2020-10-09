require_relative 'methods'
require 'awesome_print'
require 'pry'

# read the file and store text into a string variable
article = read_file("article.txt")

# split text into words
words = article.split.map(&:downcase).map { |word| word.gsub(/\W/, '') }

# generate a hash of word occurences
# key : word, value : occurences

hash = {}

words.each do |word|
  if hash.key?(word.intern) # c'est comme .to_sym
    hash[word.to_sym] += 1  # value update
  else
    hash[word.to_sym] = 1   # key-value pair creation
  end
end

# hash.keys.sort_by(&:downcase).each do |key|
#   puts "#{key} is repeated #{hash[key]} times"
# end

array = hash.map do |key, value|
  [key, value]
end

sorted_hash = array.sort_by { |element| element.last }.reverse.to_h

sorted_hash.each do |key, value|
  puts "#{key} is repeated #{hash[key]} times"
end
# handle punctuation
# handle case sensitivity
