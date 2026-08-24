# frozen_string_literal: false

####### Some arrays #######
[]
[5]
["Hello", "Goodbye"]

flavor = "vanilla" # Not an array, of course...
[89.9, flavor, [true, false]] # ...but this is

gems = ["Pearl", "Garnet", "Amethyst"]

puts gems
puts          #just a blank line
puts gems [0]
puts gems [1]
puts gems [2]
puts gems [3] #This is out of range
puts

other_gems = []
other_gems[3] = "Ruby"
other_gems[0] = "Pink Diamond"
other_gems[2] = "Sapphire"
other_gems[0] = "Rose Quartz"
puts other_gems
puts

####### My First Iterator #######
languages = ["English", "Norwegian", "Ruby"]

languages.each do |lang|
  puts "I love #{lang}! Don't you?"
end

puts "And let's hear it for Fortran!"
puts "<crickets chirp in the distance>"
puts

####### integer method FTW #######
3.times do
  puts "Hip-Hip-Hooray!"
end

puts

2.times do
  puts "...you can say that again..."
end

####### More Array Methods #######
foods = ["artichoke", "brioche", "caramel"]

puts foods
puts
puts foods.to_s
puts
puts foods.join(', ')
puts
puts foods.join(" :) ") + " 8)"

200.times do
  puts []
end

puts

gems_langs_foods = [gems, languages, foods]
puts gems_langs_foods
puts

favorites = []
favorites.push("raindrops on roses")
favorites.push("whiskey on kittens")

puts favorites[0]
puts favorites.last
puts favorites.length

puts favorites.pop
puts favorites
puts favorites.length

# Ch. 7 continued in ch_7_bld_and_sort_array.rb, ch_7_make_a_list_no_sort.rb,
# and ch_7_table_of_contents_redux.rb
