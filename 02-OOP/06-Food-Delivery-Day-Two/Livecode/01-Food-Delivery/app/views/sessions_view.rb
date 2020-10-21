require 'io/console'

class SessionsView
  def ask_username
    puts "Enter username:"
    print '> '
    gets.chomp
  end

  def ask_password
    puts "Enter password:"
    print '> '
    STDIN.noecho(&:gets).chomp
  end
end
