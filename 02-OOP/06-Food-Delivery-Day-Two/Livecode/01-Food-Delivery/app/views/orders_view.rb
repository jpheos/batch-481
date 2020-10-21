class OrdersView

  def display_undelivered_orders(orders)
    orders.each_with_index do |order, index|
      puts "#{index + 1} - #{order.employee.username} [#{order.meal.name}] (CUSTOMER: #{order.customer.name}, #{order.customer.address})"
    end
  end

  def display_employee_undelivered_orders(orders)
    orders.each_with_index do |order, index|
      puts "#{index + 1} - [#{order.meal.name}] (CUSTOMER: #{order.customer.name}, #{order.customer.address})"
    end
  end

  def ask_index
    puts "Enter a number of order"
    print '> '
    gets.chomp.to_i - 1
  end
end
