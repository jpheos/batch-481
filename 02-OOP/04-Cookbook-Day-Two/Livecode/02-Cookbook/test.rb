require 'amazing_print'
require_relative 'lib/recipe'
require_relative 'lib/cookbook'
require_relative 'lib/controller'


csv_file   = File.join(__dir__, 'lib', 'recipes.csv')

recipe = Recipe.new("gateau au yaourt", "voila")

cookbook   = Cookbook.new(csv_file)

controller = Controller.new(cookbook)

controller.destroy
