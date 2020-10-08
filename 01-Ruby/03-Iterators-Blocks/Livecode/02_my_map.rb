def my_map(array)
  puts "5"
  new_array = []
  puts "6"
  array.each do |x|
    puts "-7"
    new_array << yield(x)
    puts "-9"
  end
  puts "10"
  new_array
end


puts "1"

arr = [1, 2, 3, 4] #=> [2, 4, 6, 8]

puts "2"

puts "3"
result_native_map = arr.map { |x| x * 5 }
puts "4"
result_my_map = my_map(arr) do |x|
  puts "-8"
  x * 5
end

puts "11"

p result_native_map
p result_my_map
