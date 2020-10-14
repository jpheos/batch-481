class Car
  def start_engine
    start_fuel_pump
    init_spark_plug
    puts 'engine started !'
  end

  private

  def start_fuel_pump
    puts 'fuel pump started'
  end

  def init_spark_plug
    puts 'initianlizing spark plug'
  end
end


Car.new.start_engine
Car.new.start_fuel_pump
