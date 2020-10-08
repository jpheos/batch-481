# def timer
#   puts "start timer"
#   start_time = Time.now

#   yield


#   puts "end timer"
#   end_time = Time.now

#   puts "duration: #{end_time - start_time}"
# end


# timer do
#   puts ">>> je démarre le code qui m'interesse"
#   sleep(4)
#   puts ">>> je fini le code qui m'interesse"
# end



def greet(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.upcase}"
  return "Hello, #{full_name}"
end


def salutation(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.upcase}"
  return "Salut, #{full_name}"
end










def beautify_name(first_name, last_name)
  puts ">>> 1"
  full_n = "#{first_name.capitalize} #{last_name.upcase}"
  puts ">>> 2"
  r = yield(full_n)
  puts ">>> 4"
  r
end


puts ">>> 0"

res = beautify_name('john', 'lennon') do |full_name|
  puts ">>> 3"
  "Hello, #{full_name}"
end
puts ">>> 5"

puts res

# res =  beautify_name('john', 'lennon') do |full_name|
#   "Salut, #{full_name}"
# end
# puts res
