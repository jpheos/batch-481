class Employee
  attr_reader :username, :password, :role
  attr_accessor :id

  def initialize(args = {})
    @id       = args[:id]
    @username = args[:username]
    @password = args[:password]
    @role     = args[:role]
  end

  def manager?
    @role == 'manager'
  end

  def delivery_guy?
    @role == 'delivery_guy'
  end
end
