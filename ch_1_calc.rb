# frozen_string_literal: false

puts "introduction".upcase
puts 1 + 2
puts 3
puts ""

puts "Simple Arithmetic".upcase
puts "--with floats"
puts 1.0 + 2.0
puts 2.0 * 3.0
puts 5.0 - 8.0
puts 9.0 / 2.0
puts ""
puts "--with integers"
puts 1 + 2
puts 2 * 3
puts 5 - 8
puts 9 / 2
puts ""
puts "--complex expressions"
puts 5 * (12-8) + -15
puts 98 + (59872 / (13*8)) * -51
puts ""

hours_in_year = 365 * 24
decade_in_minutes = ((60 * 24) * 365) * 10
me_in_seconds = (((60 * 24) * 365) * (Time.new.year.to_i - 1992)) * 60
me_in_years = Time.new.year.to_i - 1992
mr_pine_age = 1_390_000_000 / (((60 * 24) * 365) * 60)

puts "How many hours are in a year?".upcase
puts "There are #{hours_in_year} hours in a common year."
puts ""

puts "How many minutes are in a decade?".upcase
puts "There are #{decade_in_minutes} minutes in a decade."
puts ""

puts "How many seconds old are you?".upcase
puts "I, Matt Ferlita, am #{me_in_seconds} seconds old, or #{me_in_years} years old."
puts ""

puts "If I am 1,390 million seconds old, how old am I?".upcase
puts "You are #{mr_pine_age} years old, Mr. Pine."
