class View
  def display(recipes)
    recipes.each_with_index do |recipe, i|
      puts "#{i + 1} - #{recipe.name}, #{recipe.description}"
    end
  end

  def ask_name
    puts "Enter a name:"
    print '> '
    gets.chomp
  end

  def ask_description
    puts "Enter a description:"
    print '> '
    gets.chomp
  end

  def ask_index
    puts "Enter a number:"
    print '> '
    gets.chomp.to_i - 1
  end
end
