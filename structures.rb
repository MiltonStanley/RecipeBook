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
      input = gets.chomp
      done = true if input == ""
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

  def initialize(ingredient_number, done)

  end

  def display
    puts "#{:quantity} - #{:name}"
  end

end

class Direction
  attr_accessor :number, :text, :ingredients

  def display
    puts "display direction"
  end

end