# frozen_string_literal: false

puts "PRINTING STRINGS"
puts "Hello, world!"
puts ""
puts "Good-bye."
puts ""

puts "STRING ARITHMETIC"
puts "I like" + "apple pie."
puts "I like " + "apple pie."
puts "I like" + " apple pie."
puts "blink " * 4
puts ""

puts "Numbers vs. Digits".upcase
puts  12  +  12
puts "12" + "12"
puts "12  +  12"
puts  2  *  5
puts "2" *  5
puts "2  *  5"
puts ""

puts "When Bad Things Happen to Good Programs".upcase
=begin
These don't work very well:
  puts "12" + 12
  puts "2" * "5"
  puts "Marceline" + 12
  puts "Finn" * "Jake"
  puts 11 * "Apollo"
  puts "They said, "Yes!""
=end
puts "--Apostrophes and backslashes"
puts "They said, \"yes!\""
puts "up\\down"
puts "backslash at the end of a string:  \\"
puts "Dip!"
puts "\D\i\p\!"
puts ""
puts "--Some escape sequences"
puts "Duck...\nDuck..."
puts "\tGoose! (or grey duck for some of you!)"
