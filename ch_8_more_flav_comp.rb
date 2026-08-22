# frozen_string_literal: false

# note: match_A_B means "round A, match B"
match_1_1 = ["vanilla", "chocolate"]
match_1_2 = ["rhubarb", "pistachio"]
match_1_3 = ["spumoni", "green tea"]
match_1_4 = ["cherry", "strawberry"]
match_2_1 = [] # this will hold the winners from 1_1 and 1_2
match_2_2 = [] # this will hold the winners from 1_3 and 1_4
match_3_1 = [] # this will hold the winners from 2_1 and 2_2
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
puts "ROUND 1, MATCH 1: Which flavor is best?"
match_2_1[0] = ask_for_winner(match_1_1)
puts
puts "ROUND 1, MATCH 2: Which flavor is best?"
match_2_1[1] = ask_for_winner(match_1_2)
puts
puts "ROUND 1, MATCH 3: Which flavor is best?"
match_2_2[0] = ask_for_winner(match_1_3)
puts
puts "ROUND 1, MATCH 4: Which flavor is best?"
match_2_2[1] = ask_for_winner(match_1_4)
puts
puts "ROUND 2, MATCH 1: Which flavor is best?"
match_3_1[0] = ask_for_winner(match_2_1)
puts
puts "ROUND 2, MATCH 2: Which flavor is best?"
match_3_1[1] = ask_for_winner(match_2_2)
puts
puts "CHAMPIONSHIP MATCH!"
puts "Which flavor is best?"
winner = ask_for_winner(match_3_1)
puts
puts "And the Ultimate Flavor Championship is:"
puts winner.upcase+"!!"
