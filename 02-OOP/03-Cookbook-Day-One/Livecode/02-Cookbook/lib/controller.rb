require_relative 'view'
require_relative 'recipe'

class Controller
  def initialize(cookbook)
    @view     = View.new
    @cookbook = cookbook
  end

  def list
    display
  end

  def create
    name = @view.ask_name
    description = @view.ask_description
    recipe = Recipe.new(name, description)
    @cookbook.add_recipe(recipe)
  end

  def destroy
    display
    index = @view.ask_index
    @cookbook.remove_recipe(index)
  end

  private

  def display
    recipes = @cookbook.all
    @view.display(recipes)
  end
end
