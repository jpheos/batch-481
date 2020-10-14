require 'pry'

class Car
  attr_reader   :brand, :engine_started
  attr_accessor :color

  def initialize(my_color, brand)
    @engine_started = false
    @color = my_color
    @brand = brand
  end

  def engine_started?
    engine_started
  end

  def start_engine
    @engine_started = true
  end

  # getter
  # def color
  #   return @color
  # end

  def engine_started
    @engine_started
  end
  # def color=(new_color)
  #   @color = new_color
  # end
end


my_car = Car.new('red', 'Ferrari')
your_car = Car.new('blue', 'Ferrari')

# p your_car.engine_started
# p your_car.engine_started?


p my_car.color
# my_car.color=('black')
my_car.color = 'black'
p my_car.color


my_car.start_engine

# p "state of my car : #{my_car.engine_started?}"
# p "state of your car : #{your_car.engine_started?}"
