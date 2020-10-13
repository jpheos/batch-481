def run
  puts '> Welcome to your Christmas gift list'
  continue = true

  while continue
    puts '> Which action [list|add|delete|quit]?'
    print '> '
    action = gets.chomp

    case action
    when 'list'   then puts 'TODO list'
    when 'add'    then puts 'TODO add'
    when 'delete' then puts 'TODO delete'
    when 'quit'   then continue = false
    else
      puts 'Wrong choice...'
    end
  end
  puts '> Goodbye'
end

run
