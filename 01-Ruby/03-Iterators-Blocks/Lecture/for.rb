peoples = ["toto", "titi", "tata"]

for i in (0...peoples.size)
  people = peoples[i]
  puts "#{i} - Salut je suis #{people}"
end

p "-------------------------"

for people in peoples
  puts people
end
