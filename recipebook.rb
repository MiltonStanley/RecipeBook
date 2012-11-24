# THINGS TO ADD
#
# Saving recipes
# pantry feature
#

require 'yaml'
require './structures'
system "clear"

book = Recipe_Book.new

while true
  puts "1) Exit 2) New Recipe 3) List All Recipes 4) Find a recipe"
  print "--> "
  command = gets.chomp
  case command
    when "1" then break
    when "2" then new_recipe = Recipe.new
                  book.push new_recipe
    when "3" then book.list
    when "4" then book.find
    else puts "Invalid command!"
  end
end