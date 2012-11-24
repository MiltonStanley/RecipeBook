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
      puts 'Top of loop'
      new_ingredient = Ingredient.new(ingredient_number, done)
      puts 'back in loop'
      puts "done is now " + done.to_s
      puts "new_ingredient is now" + new_ingredient.to_s
      ingredient_number += 1
      @ingredients.push new_ingredient unless done
    end
=begin
    puts "Directions (return on empty line to end)"
    @directions = Array.new
    direction_number = 0
    done = false
    until done
      direction_number += 1
      print "Direction #{direction_number}: "
      _direction = gets.chomp
      done = true if _direction == ""
      @directions.push _direction unless done
    end
=end

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
    print "Ingredient #{ingredient_number}: "
    ingredient = gets.chomp
    _quantity, _name = ingredient.split('|')
    done = true unless _quantity.nil? || _name.nil?
    @quantity = _quantity.strip unless _quantity.nil?
    @name = _name.strip unless _name.nil?
    puts "done is " + done.to_s
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