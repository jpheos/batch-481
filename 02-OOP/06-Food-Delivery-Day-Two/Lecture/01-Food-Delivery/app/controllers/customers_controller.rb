require_relative '../views/customers_view'

class CustomersController
  def initialize(customer_repository)
    @customer_repository = customer_repository
    @customer_view = CustomersView.new
  end

  def list
    customers = @customer_repository.all
    @customer_view.display_all(customers)
  end

  def add
    name = @customer_view.ask_name
    address = @customer_view.ask_address
    customer = Customer.new(name: name, address: address)
    @customer_repository.create(customer)
  end
end
