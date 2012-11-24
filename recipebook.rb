class Recipe
  attr_accessor :name, :ingredients, :directions, :serving_size

  def print
    # cycle through attributes, printing each
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
    #nicely formatted printing
  end

end

class Direction
  attr_accessor :number, :text, :ingredients

  def print
    # nicely formatted printing
  end

end

stay = true

while stay
  puts "1) Exit 2) New Recipe 3) Show Recipes 4) Edit Pantry"
  print "Job to do: "
  command = gets.chomp
  case command
    when "1" then stay = false
    when "2" then puts "new recipe"
    when "3" then puts "show recipes"
    when "4" then puts "edit pantry"
    else puts "Invalid command!"
  end
end