class Order
  attr_reader :meal, :customer, :employee
  attr_accessor :id

  def initialize(args = {})
    @id        = args[:id]
    @meal      = args[:meal]
    @customer  = args[:customer]
    @employee  = args[:employee]
    @delivered = args[:delivered] || false
  end

  def delivered?
    @delivered
  end

  def deliver!
    @delivered = true
  end
end
