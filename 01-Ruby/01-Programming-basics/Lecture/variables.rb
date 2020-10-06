# age = 17
# puts "You are #{age} years old"

# puts "Lucky you, it's your birthday!"
# age = age + 1
# puts "You are now #{age}"


# def say_hi(name)
#   puts "Hello #{name}!"
# end

# puts "Hi John!"
# puts "Hi Paul!"
# puts "Hi Ringo!"

# puts "--------------------"

# name1 = 'John'
# say_hi(name1)
# say_hi('Paul')
# say_hi('Ringo')

# def full_name(first_name, lastname)
#   "#{first_name.capitalize} #{lastname.upcase}"
# end


# boris = full_name("boris", "paillard")
# seb = full_name("seb", "saunier")

# puts "==========================="

# puts boris
# puts seb


def max(x, y)
  if x > y
    return x
  else
    return y
  end
end

nb1 = 34
nb2 = 42

largest_number = max(nb1, nb2)

p largest_number


