class Recipe_Book < Array
  attr_accessor :recipes

  def initialize
    @recipes = Array.new
  end

  def print
    recipe_number = 1
    @recipes.each { |recipe| puts "#{recipe_number}: #{recipe.name}" }
  end

end

class Recipe
  attr_accessor :name, :ingredients, :directions, :serving_size

  def initialize(name, ingredients, directions, serving_size)
    @name = name
    @ingredients = ingredients
    @directions = directions
    @serving_size = serving_size
  end

  def print
    puts :name
    :ingredients.each { |ingredient| ingredient.print}

  end

  def edit
    # make changes
  end

end

class Pantry
  attr_accessor :ingredients

  def print
    # print ingredients
  end

end

class Ingredient
  attr_accessor :quantity, :name, :price_list

  def print
    puts "#{:quantity} - #{:name}"
  end

end

class Direction
  attr_accessor :number, :text, :ingredients

  def print
    # nicely formatted printing
  end

end