class Building
  attr_reader :name, :width, :length
  def initialize(name, width, length)
    @name = name
    @width, @length = width, length
  end

  def floor_area
    ap "je suis dans floor_area Building"
    @width * @length
  end
end
