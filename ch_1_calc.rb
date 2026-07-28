# frozen_string_literal: false

# introduction
puts "introduction".upcase
puts "1 + 2 = #{1 + 2}+"
puts 3
puts ""

# floats
puts "floats".upcase
puts "1.0 + 2.0 = #{1.0 + 2.0}"
puts "2.0 * 3.0 = #{2.0 * 3.0}"
puts "5.0 - 8.0 = #{5.0 - 8.0}"
puts "9.0 / 2.0 = #{9.0 / 2.0}"
puts ""

# integers
puts "integers".upcase
puts "1 + 2 = #{1 + 2}"
puts "2 * 3 = #{2 * 3}"
puts "5 - 8 = #{5 - 8}"
puts "9 / 2 = #{9 / 2}"
puts ""

# complex expressions
puts "complex expressions".upcase
puts "5 * (12-8) + -15 = #{5 * (12-8) + -15}"
puts "98 + (59872 / (13*8)) * -52 = #{98 + (59872 / (13*8)) * -52}"
puts ""

me_in_seconds = (((60 * 24) * 365) * (Time.new.year.to_i - 1992)) * 60
secs_old_to_years_old = 1_406_000_000 / (((60 * 24) * 365) * 60)
hours_in_year = 365 * 24
decade_in_minutes = ((60 * 24) * 365) * 10
me_in_years = Time.new.year.to_i - 1992
=begin
Average life expectancy for an American male is 76.5 as of 2026.
The American Academy of Pediatrics recommends waiting until age 2 to introduce
chocolate. 52 weeks in a year and assuming I ate 4 chocolates a week.
=end
chocolates_in_life = ((76.5 - 2) * 52) * 4

puts "How many hours are in a year?".upcase
puts "There are #{hours_in_year} hours in a common year."
puts ""

puts "How many minutes are in a decade?".upcase
puts "There are #{decade_in_minutes} minutes in a decade."
puts ""

puts "How many seconds old are you?".upcase
puts "I, Matt Ferlita, am #{me_in_seconds} seconds old, or #{me_in_years} years old."
puts ""

puts "How many chocolates do you hope to eat in your life?".upcase
puts "I hope to eat at least #{chocolates_in_life.to_i} chocolates in my lifetime."
puts ""

puts "If I am 1406 million seconds old, how old am I?".upcase
puts "You are #{secs_old_to_years_old} years old."
