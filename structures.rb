class Recipe_Book < Array

  def list
    self.each_index { |index| puts "#{index+1}: #{self[index].name}" }
  end

  def find
    self.list
    print "Show recipe #: "
    recipe = gets.chomp.to_i
    self[recipe-1].display
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

    ingredient_number = 1
    done = false
    until done
      new_ingredient = Ingredient.new(ingredient_number)
      ingredient_number += 1
      done = true if new_ingredient.name.nil? && new_ingredient.quantity.nil?
      
    end

    direction_number = 1
    done = false
    until done
      new_direction = Direction.new(direction_number)
      direction_number += 1
      done = true if new_direction.text == ""
    end

    print "Serving size: "
    @serving_size = gets.chomp
  end

  def display
    puts self.name
    
    #  index.to_s is index; "#{index}" is the same
    
    @ingredients.each_index { |index| puts "#{index+1}: #{@ingredients[index].name}" }
    puts "----"
    @directions.each_index { |index| puts @directions[index].display }
  end

  def edit
    puts 'make changes to existing recipe'
  end

end

class Ingredient
  attr_accessor :quantity, :name #:price_list

  def initialize(ingredient_number)
    print "Ingredient ##{ingredient_number}: "
    input = gets.chomp
    @quantity, @name = input.split("|")
  end

  def display
    puts "#{:quantity} - #{:name}"
  end

end

class Direction
  attr_accessor :text

  def initialize(direction_number)
    print "Direction ##{direction_number}: "
    @text = gets.chomp
  end

  def display
    puts "display direction"
  end

end