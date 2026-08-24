# frozen_string_literal: false

####### Comparison Methods #######
puts 1 > 2
puts 1 < 2
puts
puts 5 >= 5
puts 5 <= 4
puts
puts 1 == 1
puts 2 != 1
puts
puts "cat" < "dog" # cat comes before dog in dictionary
puts "a giant woman" < "Watermelon Steven" # uppercase comes before lowercase
puts "a giant woman".downcase < "Watermelon Steven".downcase
puts
puts 2 < 10 # 2 is less than 10, true
puts "2" < "10" # However, the "2" character comes before the "1" character
puts

####### Branching #######
### Example 1 ###
puts "Hello, what's your name?"
name = gets.chomp
puts "Hello, #{name}."

if name == "Chris"
  puts "What a lovely name!"
end
puts

### Example 2 ###
puts "I am a fortune-teller. Tell me your name:"
name = gets.chomp

if name == "Chris"
  puts "I see great things in your future."
else
  puts "Your future is...oh my! Look at the time!"
  puts "I really have to go. Sorry!"
end
puts

### Example 3 ###
puts "Hello, and welcome to seventh grade English."
puts "My name is Mrs. Gabbard. And your name is...?"
name = gets.chomp

if name == name.capitalize
  puts "Please take a seat, #{name}"
else
  puts "#{name}? You mean #{name.capitalize}, right?"
  puts "Don't you even know how to spell your name??"
  reply = gets.chomp

  if reply.downcase == "yes"
    puts "Hmmph! Well, sit down!"
  else
    puts "GET OUT!!"
  end
end
puts

####### Looping #######
### Example 1 ###
# This loops forever, let me out!
# input = ""
# while input != "bye"
#   puts input
#   input = gets.chomp
# end
# puts "Come again soon!"

### Example 2 ###
# NOT A REAL PROGRAM
# while just_like_go_forever
#   input = gets.chomp
#   puts input
#   if input == "bye"
#     stop_looping
#   end
# end

# THIS IS TOTALLY A REAL PROGRAM
puts "Buffy".upcase
while "Spike" > "Angel"
  input = gets.chomp
  puts input
  if input == "bye"
    break
  end
end

puts "Come again soon!"
puts

### Example 3 ###
puts "loop with true object".upcase
while true
  input = gets.chomp
  puts input
  if input == "bye"
    break
  end
end

puts "Come again soon!"
puts

####### A Little Bit of Logic #######
### Example 1 ###
puts "Chris or Katy".upcase
puts "Hello, what's your name?"
name = gets.chomp
puts "Hello, #{name}"

if name == "Chris"
  puts "What a lovely name!"
else
  if name == "Katy"
    puts "What a lovely name!"
  end
end
puts

### Example 2 ###
# The logical "or" operator: ||
puts "Chris or Katy with logical 'or'".upcase
puts "Hello, what's your name?"
name = gets.chomp
puts "Hello, #{name}"

if name == "Chris" || name == "Katy"
  puts "What lovely name!"
end
puts

### Other Logical Operators ###
i_am_chris = true
i_am_purple = false
i_like_beer = true
i_eat_rocks = false

puts i_am_chris && i_like_beer # and
puts i_like_beer && i_eat_rocks
puts i_am_purple && i_like_beer
puts i_am_purple && i_eat_rocks
puts
puts i_am_chris || i_like_beer # or
puts i_like_beer || i_eat_rocks
puts i_am_purple || i_like_beer
puts i_am_purple || i_eat_rocks
puts
puts !i_am_purple # not
puts !i_am_chris
puts

### Last Example ###
puts "C Pine and Ruby Pine"
while true
  puts "What would you like to ask C to do?"
  request = gets.chomp

  puts "You say: C, please #{request}."

  puts "C responds:"
  puts "C #{request}"
  puts "Papa #{request}, too"
  puts "Mama #{request}, too"
  puts "Ruby #{request}, too"

  if request == "stop"
    break
  end
end

# Ch. 6 is continued in ch_6_99_bottles.rb, ch_6_deaf_grandma.rb
# and ch_6_leap_years.rb
