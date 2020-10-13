LIST = ['sockets', 'ruby book', 'macbook pro']

def list
  LIST.each_with_index do |item, i|
    puts "> #{i + 1} - #{item}"
  end
end

def add
  puts '> What you want to add?'
  print '> '
  item = gets.chomp
  LIST << item
end

def delete
  list
  puts 'What do you want to delete? (Choose a number)'
  print '> '
  index = gets.chomp.to_i - 1
  LIST.delete_at(index)
end

def run
  continue = true

  while continue
    puts '> Which action [list|add|delete|quit]?'
    print '> '
    action = gets.chomp

    case action
    when 'list'   then list
    when 'add'    then add
    when 'delete' then delete
    when 'quit'   then continue = false
    else
      puts 'Wrong choice...'
    end
  end
end

puts '> Welcome to your Christmas gift list'
run
puts '> Goodbye'
