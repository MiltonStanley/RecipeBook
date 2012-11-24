class Recipe_Book < Array

  def list
    system "clear"
    self.each_index do |index| 
      puts "#{index+1}: #{self[index].name}"
    end
    puts
  end

  def find
    system "clear"
    self.list
    print "Show recipe #: "
    recipe = gets.chomp.to_i
    self[recipe-1].display
    puts
  end

end

class Recipe
  attr_accessor :name, :ingredients, :directions, :serving_size

  def initialize
    print "Recipe name: "
    @name = gets.chomp.capitalize
    
    puts "Ingredients (return on empty line to end)"
    @ingredients = Array.new
    ingredient_number = 1
    done = false
    until done
      new_ingredient = Ingredient.new(ingredient_number)
      ingredient_number += 1
      done = true if new_ingredient.name.nil? && new_ingredient.quantity.nil?
      @ingredients.push new_ingredient unless done
    end

    puts "Directions (return on empty line to end)"
    @directions = Array.new
    direction_number = 1
    done = false
    until done
      new_direction = Direction.new(direction_number)
      direction_number += 1
      done = true if new_direction.text == ""
      @directions.push new_direction unless done
    end

    print "Serving size: "
    @serving_size = gets.chomp
  end

  def display
    system "clear"
    puts @name.upcase    
    (1..@name.length).each { |i| print "-" }
    puts; puts
    @ingredients.each { |ingredient| puts "#{ingredient.quantity} #{ingredient.name}" }
    puts
    @directions.each_index { |index| puts "#{index+1}. #{@directions[index].text}" }
    puts; puts
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