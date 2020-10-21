require 'amazing_print'
require_relative 'app/repositories/meal_repository'
require_relative 'app/controllers/meals_controller'
require_relative 'app/models/meal'
require_relative 'router'


csv_file = 'data/meals.csv'

repo = MealRepository.new(csv_file)


# meal1 = Meal.new(name: 'toto', price: 12)
# meal2 = Meal.new(name: 'titi', price: 21)



# repo.create(meal1)
# repo.create(meal2)



# router = Router.new


# router.run


meals_controller = MealsController.new(repo)

meals_controller.add

puts "



"

meals_controller.list
