class Recipe_Book < Array
  attr_accessor :recipes

  def initialize
    @recipes = Array.new
  end

  def list
    recipe_number = 1
    @recipes.each { |recipe| puts "#{recipe_number}: #{recipe.name}" }
  end

  def find
    self.list
    print "Show recipe #: "
    recipe = gets.chomp.to_i
    self[recipe].display
  end

end

class Recipe
  attr_accessor :name, :ingredients, :directions, :serving_size

  def initialize
    print "Recipe name: "
    _name = gets.chomp.capitalize!
    @name = _name

    puts "Ingredients (return on empty line to end)"
    @ingredients = Array.new
    ingredient_number = 0
    done = false
    until done
      ingredient_number += 1
      print "Ingredient #{ingredient_number}: "
      _ingredient = gets.chomp
      done = true if _ingredient == ""
      @ingredients.push _ingredient
    end

    puts "Directions (return on empty line to end)"
    @directions = Array.new
    direction_number = 0
    done = false
    until done
      direction_number += 1
      print "Direction #{direction_number}: "
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
    puts 'make changes to existing recipe'
  end

end

class Pantry
  attr_accessor :ingredients

  def display
    puts 'display ingredients'
  end

  def edit
    puts 'edit existing ingredients'
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