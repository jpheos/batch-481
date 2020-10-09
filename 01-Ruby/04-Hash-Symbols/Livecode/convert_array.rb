students = [ [ "john", 28 ], [ "mary", 25 ], [ "paul", 21 ] ]

hash_array = students.map do |student|
  {
    name: student.first, # student[0]
    age: student.last    # student[1]
  }
end

puts hash_array
