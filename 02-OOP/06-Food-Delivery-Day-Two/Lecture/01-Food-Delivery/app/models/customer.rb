class Customer
  attr_reader :name, :address
  attr_accessor :id

  def initialize(args = {})
    @id      = args[:id]
    @name    = args[:name]
    @address = args[:address]
  end
end
