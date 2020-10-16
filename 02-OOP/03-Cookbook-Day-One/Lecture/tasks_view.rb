class TasksView
  def display_all(tasks)
    tasks.each_with_index do |task, i|
      done = task.done? ? 'X' : ' '
      puts "#{i + 1} - [#{done}] #{task.description}"
    end
  end

  def index
    puts "Enter a number"
    print '> '
    gets.chomp.to_i - 1
  end

  def description
    puts "Enter a description"
    print '> '
    gets.chomp
  end
end
