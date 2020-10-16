class Router
  def initialize(controller)
    @controller = controller
    @continue   = true
    @action     = nil
  end

  def run
    while @continue
      display_actions
      choose_action
      dispatch
    end
  end

  private

  def display_actions
    # affiche les actions possibles
    puts "\n---"
    puts 'What do you want to do?'
    puts '1 - Display tasks'
    puts '2 - Add a new task'
    puts '3 - Mark a task as done'
    puts '4 - Remove a task'
    puts '9 - Quit'
    puts '---'
  end

  def choose_action
    # on demande à l utilisateur ce qu il veut faire
    print '> '
    @action = gets.chomp.to_i
  end

  def dispatch
    # on fait la bonne action en fonction du choix
    case @action
    when 1 then @controller.list
    when 2 then @controller.create
    when 3 then @controller.mark_as_done
    when 4 then @controller.destroy
    when 9 then @continue = false
    end
  end

end
