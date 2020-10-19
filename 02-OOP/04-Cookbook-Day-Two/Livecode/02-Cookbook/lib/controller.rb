require_relative 'view'
require_relative 'recipe'
# require_relative 'scrapper'
require_relative 'scrape_allrecipes_service'

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
    rating = @view.ask_rating
    recipe = Recipe.new(name, description, rating)
    @cookbook.add_recipe(recipe)
  end

  def destroy
    display
    index = @view.ask_index
    @cookbook.remove_recipe(index)
  end

  def import
    # on demande un ingredient
    ingredient = @view.ask_ingredient
    # on dit à l'utilisateur qu'on cherche cet in grédient
    @view.looking_ingredient(ingredient)

    # on va chercher une liste de recettes
    recipes = ScrapeAllrecipesService.new(ingredient).call

    # on lui affiche la liste des recettes trouvées
    @view.display_recipes_import(recipes)

    # on lui demande d'en sélectionner une (index)
    index = @view.ask_index_import

    recipe = recipes[index]

    # on dit à l'utilisateur qu'on la rajoute
    @view.importing_recipe(recipe.name)
    # on la rajoute!

    @cookbook.add_recipe(recipe)
  end

  def mark_as_done
    display
    index = @view.ask_index
    recipe = @recipes[index]
    recipe.mark_as_done!
    @cookbook.save
  end

  private

  def display
    @recipes = @cookbook.all
    @view.display(@recipes)
  end
end
