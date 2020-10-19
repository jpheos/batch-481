class Recipe
  attr_reader :name, :description, :rating, :done

  def initialize(name, description, rating, done = false)
    @name        = name
    @description = description
    @rating = rating
    @done = done
  end

  def mark_as_done!
    @done = true
  end
end
