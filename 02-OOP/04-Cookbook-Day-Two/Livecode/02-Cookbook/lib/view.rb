class View
  def display(recipes)
    recipes.each_with_index do |recipe, i|
      mark = recipe.done ? 'X' : ' '
      puts "#{i + 1} - [#{mark}] #{recipe.name}, #{recipe.description} (#{recipe.rating}/5)"
    end
  end


  def display_recipes_import(recipes)
    recipes.each_with_index do |recipe, i|
      puts "#{i + 1}. #{recipe.name} (#{recipe.rating}/5)"
    end
  end

  def ask_name
    ask_string("Enter a name:")
  end

  def ask_description
    ask_string("Enter a description:")
  end

  def ask_rating
    ask_number("Enter a rating:")
  end

  def ask_ingredient
    ask_string("Enter an ingredient:")
  end

  def ask_index_import
    ask_i("Which recipe would you like to import? (enter index)")
  end

  def ask_index
    ask_i("Enter a number:")
  end

  def looking_ingredient(ingredient)
    puts "Looking for \"#{ingredient}\" recipes on the Internet..."
  end

  def importing_recipe(name)
    puts "Importing \"#{name}\"..."
  end

  private

  def ask_string(sentence)
    puts sentence
    print '> '
    gets.chomp
  end

  def ask_number(sentence)
    puts sentence
    print '> '
    gets.chomp.to_i
  end

  def ask_i(sentence)
    puts sentence
    print '> '
    gets.chomp.to_i - 1
  end
end
