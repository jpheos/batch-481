require_relative '../views/meals_view'

class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
    @meal_view = MealsView.new
  end

  def list
    meals = @meal_repository.all
    @meal_view.display_all(meals)
  end

  def add
    name = @meal_view.ask_name
    price = @meal_view.ask_price
    meal = Meal.new(name: name, price: price)
    @meal_repository.create(meal)
  end
end
