# THINGS TO ADD
#
# Saving recipes
# pantry feature
#

require 'yaml'
require './structures'
system "clear"

recipe_array = YAML::load(File.open('myrecipes.yaml'))

book = Recipe_Book.new
recipe_array.each { |recipe| book.push recipe }

while true
  puts "1) New Recipe 2) List All Recipes 3) Find a recipe 4) Save and exit"
  print "--> "
  command = gets.chomp
  case command
    when "1" then new_recipe = Recipe.new
                  book.push new_recipe
    when "2" then book.list
    when "3" then book.find
    when "4" then myrecipes = File.open('myrecipes.yaml','w')
                  myrecipes.puts book.to_yaml
                  myrecipes.close
                  break
    else puts "Invalid command!"
  end
end