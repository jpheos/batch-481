require_relative '../views/orders_view'
require_relative '../views/meals_view'
require_relative '../views/customers_view'
require_relative '../views/employees_view'

class OrdersController
  def initialize(meal_repository, customer_repository, employee_repository, order_repository)
    @meal_repository = meal_repository
    @customer_repository = customer_repository
    @employee_repository = employee_repository
    @order_repository = order_repository


    @orders_view = OrdersView.new
    @meals_view = MealsView.new
    @customers_view = CustomersView.new
    @employees_view = EmployeesView.new
  end

  def add
    meals = @meal_repository.all
    @meals_view.display_all(meals)
    index = @orders_view.ask_index
    meal = meals[index]

    customers = @customer_repository.all
    @customers_view.display_all(customers)
    index = @orders_view.ask_index
    customer = customers[index]

    employees = @employee_repository.all_delivery_guys
    @employees_view.display_all(employees)
    index = @orders_view.ask_index
    employee = employees[index]

    order = Order.new(meal: meal, customer: customer, employee: employee)
    @order_repository.create(order)
  end

  def list_undelivered_orders
    orders = @order_repository.undelivered_orders
    @orders_view.display_undelivered_orders(orders)
  end

  def list_my_orders(employee)
    @orders = @order_repository.undelivered_orders.select {|o| o.employee == employee}
    @orders_view.display_employee_undelivered_orders(@orders)
  end

  def mark_as_delivered(employee)
    list_my_orders(employee)
    index = @orders_view.ask_index
    order = @orders[index]
    order.deliver!
    @order_repository.save
  end
end
