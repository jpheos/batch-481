require 'amazing_print'

class Butler
  def initialize(house)
    @house = house # We want @house to store an instance of House
  end

  def clean_house
    puts "#{@house.name} cleaned!"
  end
end

class House
  attr_reader :name, :butler


  def initialize(name)
    @name = name
    @butler = Butler.new(self)
  end
end


house = House.new("la petite maison dans la prairie")
house2 = House.new("la grande maison")

house2.butler.clean_house


# class Castle
#   def initialize(name, ruler)
#     @name, @ruler = name, ruler
#   end

#   def castle_details
#     "#{@name} is ruled by #{ruler_name}"
#   end

#   def ruler_name
#     @ruler.capitalize
#   end
# end

# dragonstone = Castle.new("Dragonstone", "targaryen")





