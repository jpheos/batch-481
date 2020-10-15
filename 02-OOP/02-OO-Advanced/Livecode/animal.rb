class Animal
  attr_reader :name

  def initialize(xxxxx)
    @name = xxxxx
  end

  def talk
    "#{@name} #{shout}"
  end

  def self.phylas
    %w[Deuterostomia Ecdysozoa Lophotrochozoa Radiata]
  end

  def eat(food)
    "#{@name} eats a #{food}"
  end
end
