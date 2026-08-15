# frozen_string_literal: false

# flavor tournament
# match_1 = ["vanilla", "chocolate"]
# match_2 = ["rhubarb", "pistachio"]
# match_3 = [] # this will hold the winners from 1 & 2
# winner = nil # this will hold the final winner
#
# puts "Welcome to ULTIMATE FLAVOR TOURNAMENT!"
# puts
# puts "MATCH 1: Which flavor is best?"
# puts "0. "+match_1[0]
# puts "1. "+match_1[1]
# while true
#   answer = gets.chomp.downcase
#   if (answer == "0" || answer == "1")
#     match_3[0] = match_1[answer.to_i]
#     break
#   else
#   puts "Please answer '0' or '1'."
#   end
# end
#
# puts
# puts "MATCH 2: Which flavor is best?"
# puts "0. "+match_2[0]
# puts "1. "+match_2[1]
# while true
#   answer = gets.chomp.downcase
#   if (answer == "0" || answer == "1")
#     match_3[1] = match_2[answer.to_i]
#     break
#   else puts "Please answer '0' or '1'."
#   end
# end
#
# puts
# puts "CHAMPIONSHIP MATCH!"
# puts "Which flavor is best?"
# puts "0. "+match_3[0]
# puts "1. "+match_3[1]
# while true
#   answer = gets.chomp.downcase
#   if (answer == "0" || answer == "1")
#     winner = match_3[answer.to_i]
#     break
#   else puts "Please answer '0' or '1'."
#   end
# end
#
# puts
# puts "And the Ultimate Flavor Champion is:"
# puts winner.upcase+"!!"

# def say_moo
#   puts "moooooo..."
# end
#
# say_moo # once...
# say_moo # twice...
# say_moo # three times a bovine

# Method Arguments: What Goes In
# def say_moo(number_of_moos)
#   puts "mooooooo..."*number_of_moos
# end

# say_moo(3)
# puts "oink-oink"

# This last line should give an error
# because the argument is missing
# say_moo

# Local Variables: What's Inside
# def double_this(num)
#   num_times_2 = num*2
#   puts "#{num} doubled is #{num_times_2}"
# end
# double_this(44)

# This will not work
# puts num_times_2.to_s

# tough_var = "You can't even touch my variable!"
#
# def little_pest(tough_var)
#   tough_var = nil
#   puts "HAHA! I ruined your variable !"
# end
#
# little_pest(tough_var)
# puts tough_var

# Return Variables: What Comes Out
# return_value = puts "This puts returned:"
# puts return_value

# puts say_moo(3)

# def say_moo(number_of_moos)
#   puts "mooooooo..."*number_of_moos
#   "yellow submarine"
# end
#
# x = say_moo(3)
# puts x.capitalize + ", dude..."
# puts x + "."

# def favorite_food(name)
#   if name == "Lister"
#     return "vindaloo"
#   end
#
#   if name == "Rimmer"
#     return "mashed potatoes"
#   end
#   "hard to say... maybe fried plaintain?"
# end
#
# def favorite_drink(name)
#   if name == "Jean-Luc"
#     "tea, Earl Grey, hot"
#   elsif name == "Kathryn"
#     "coffee, black"
#   else
#     "perhaps...horchata?"
#   end
# end
#
# puts favorite_food("Rimmer")
# puts favorite_food("Lister")
# puts favorite_food("Cassandra")
# puts favorite_drink("Kathryn")
# puts favorite_drink("Q")
# puts favorite_drink("Jean-Luc")

# Flavor Tournament Redux
match_1 = ["vanilla", "chocolate"]
match_2 = ["rhubarb", "pistachio"]
match_3 = [] # this will hold the winners from 1 & 2
winner = nil # this will hold the final winner

def ask_for_winner(flavors)
  puts "0. "+flavors[0]
  puts "1. "+flavors[1]

  while true
    answer = gets.chomp.downcase
    if (answer == "0" || answer == "1")
      return flavors[answer.to_i]
    else puts "Please and '0' or '1'."
    end
  end
end

puts "Welcome to ULTIMATE FLAVOR TOURNAMENT!"
puts
puts "MATCH 1: Which flavor is best?"
match_3[0] = ask_for_winner(match_1)
puts
puts "MATCH 2: Which flavor is best?"
match_3[1] = ask_for_winner(match_2)
puts
puts "CHAMPIONSHIP MATCH!"
puts "Which flavor is best?"
winner = ask_for_winner(match_3)
puts
puts "And the Ultimate Flavor Championship is:"
puts winner.upcase+"!!"

# Ch. 8 is continued in ch_8_more_flavors_comp.rb, ch_8_old_roman_num.rb, and ch_8_new_roman_num.rb
