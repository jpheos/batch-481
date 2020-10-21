class Router
  def initialize(meals_controller, customers_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @running    = true
  end

  def run
    puts "Welcome to the Food delivery!"
    puts "           --           "

    employee = @sessions_controller.sign_in

    while @running

      if employee.manager?
        display_tasks_manager
        action = gets.chomp.to_i
        print `clear`
        route_action_manager(action)
      else
        display_tasks_delivery_guy
        action = gets.chomp.to_i
        print `clear`
        route_action_delivery_guy(action)
      end
    end
  end

  private

  def route_action(action)
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 9 then stop
    else
      puts "Please press 1, 2, 3, 4 or 9"
    end
  end

  def stop
    @running = false
  end

  def display_tasks
    puts ""
    puts "What do you want to do next?"
    puts "1 - List all meals"
    puts "2 - Create a new meal"
    puts "3 - List all customers"
    puts "4 - Create a new customer"
    puts "9 - Stop and exit the program"
  end
end
