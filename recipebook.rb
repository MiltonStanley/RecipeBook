require './structures'

system "clear"

stay = true
book = Recipe_Book.new

while stay
  puts "1) Exit 2) New Recipe 3) List All Recipes 4) Find a recipe"
  print "Job to do: "
  command = gets.chomp
  case command
    when "1" then stay = false
    when "2" then new_recipe = Recipe.new
        book.push new_recipe
    when "3" then book.list
    when "4" then book.find
    else puts "Invalid command!"
  end
end