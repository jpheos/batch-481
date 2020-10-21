class Meal
  attr_reader :name, :price
  attr_accessor :id

  def initialize(args = {})
    @id    = args[:id]
    @name  = args[:name]
    @price = args[:price]
  end
end
