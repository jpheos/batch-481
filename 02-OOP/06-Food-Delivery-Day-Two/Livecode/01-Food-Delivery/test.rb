require 'amazing_print'

require_relative 'app/models/meal'
require_relative 'app/models/customer'
require_relative 'app/models/employee'
require_relative 'app/models/order'
require_relative 'app/repositories/meal_repository'
require_relative 'app/repositories/customer_repository'
require_relative 'app/repositories/employee_repository'
require_relative 'app/repositories/order_repository'




meal = Meal.new(name: 'frites', price: 20)
customer = Customer.new(name: 'toto', address: 'Lyon')
employee = Employee.new(username: 'titi', password: 'XXXX', role: 'delivery_guy')

meal_repository = MealRepository.new('data/meals.csv')
customer_repository = CustomerRepository.new('data/customers.csv')
employee_repository = EmployeeRepository.new('data/employees.csv')

order_repository = OrderRepository.new('data/orders.csv', meal_repository, customer_repository, employee_repository)

# ap meal
# ap "----"
# ap customer
# ap "----"
# ap employee
# # ap "----"

# order = Order.new(meal: meal, customer: customer, employee: employee)


# ap order.delivered?

# order.deliver!

# ap order.delivered?



ap order_repository.all.first.meal.id
