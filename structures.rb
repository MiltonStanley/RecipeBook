class Recipe_Book < Array
  attr_accessor :recipes

  def initialize
    @recipes = Array.new
  end

  def display
    recipe_number = 1
    @recipes.each { |recipe| puts "#{recipe_number}: #{recipe.name}" }
  end

end

class Recipe
  attr_accessor :name, :ingredients, :directions, :serving_size

  def initialize
    print "Recipe name: "
    _name = gets.chomp.capitalize!
    @name = _name
    
    print "Ingredients (return on empty line to end): "
    @ingredients = Array.new
    done = false
    until done
      _ingredient = gets.chomp
      done = true if _ingredient == ""
      @ingredients.push _ingredient
    end

    print "Directions (return on empty line to end): "
    @directions = Array.new
    done = false
    until done
      _direction = gets.chomp
      done = true if _direction == ""
      @directions.push _direction
    end

    print "Serving size: "
    @serving_size = gets.chomp
  end

  def display
    puts :name
    :ingredients.each { |ingredient| ingredient.display}

  end

  def edit
    # make changes to existing recipe
  end

end

class Pantry
  attr_accessor :ingredients

  def display
    # display ingredients
  end

  def edit
    # edit existing ingredients
  end

end

class Ingredient
  attr_accessor :quantity, :name, :price_list

  def display
    puts "#{:quantity} - #{:name}"
  end

end

class Direction
  attr_accessor :number, :text, :ingredients

  def display
    puts ""
  end

end