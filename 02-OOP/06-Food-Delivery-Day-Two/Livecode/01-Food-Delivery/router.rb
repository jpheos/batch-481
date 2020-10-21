class Router
  def initialize(meals_controller, customers_controller, sessions_controller, orders_controller)
    @meals_controller     = meals_controller
    @customers_controller = customers_controller
    @sessions_controller  = sessions_controller
    @orders_controller    = orders_controller
    @running              = true
  end

  def run
    puts "Welcome to the Food delivery!"
    puts "           --           "

    @employee = @sessions_controller.sign_in

    while @running
      @employee.manager? ? display_tasks_manager : display_tasks_delivery_guy
      action = gets.chomp.to_i
      print `clear`
      @employee.manager? ? route_action_manager(action) : route_action_delivery_guy(action)
    end
  end

  private

  def route_action_manager(action)
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 5 then @orders_controller.add
    when 6 then @orders_controller.list_undelivered_orders
    when 9 then stop
    else
      puts "Please press 1, 2, 3, 4, 5, 6 or 9"
    end
  end

  def route_action_delivery_guy(action)
    case action
    when 1 then @orders_controller.mark_as_delivered(@employee)
    when 2 then @orders_controller.list_my_orders(@employee)
    when 9 then stop
    else
      puts "Please press 1, 2 or 9"
    end
  end

  def stop
    @running = false
  end

  def display_tasks_manager
    puts ""
    puts "What do you want to do next?"
    puts "1 - List all meals"
    puts "2 - Create a new meal"
    puts "3 - List all customers"
    puts "4 - Create a new customer"
    puts "5 - Add order"
    puts "6 - List undelivered orders"
    puts "9 - Stop and exit the program"
  end

  def display_tasks_delivery_guy
    puts ""
    puts "What do you want to do next?"
    puts "1 - Mark an order as delivered"
    puts "2 - List my orders"
    puts "9 - Stop and exit the program"
  end
end
