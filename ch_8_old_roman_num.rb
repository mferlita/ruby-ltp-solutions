# frozen_string_literal: false

# Write a method that when passed an integer between 1 and 3000 returns a string
# containing the proper old school numeral.
# old_roman_numeral(4) should return IIII.
# Integer division and modulus methods.

def old_roman_numeral(num)
  raise "Must use positive integer" if num <= 0
  roman = ""

  roman = roman + "M" * (num / 1000)
  roman = roman + "D" * ((num % 1000) / 500)
  roman = roman + "C" * ((num % 500) / 100)
  roman = roman + "L" * ((num % 100) / 50)
  roman = roman + "X" * ((num % 50) / 10)
  roman = roman + "V" * ((num % 10) / 5)
  roman = roman + "I" * ((num % 5) / 1)

  return roman
end

puts old_roman_numeral(1999)
puts
puts old_roman_numeral(1992)
puts old_roman_numeral(2004)
puts
puts old_roman_numeral(39)
puts old_roman_numeral(246)
puts old_roman_numeral(789)
puts old_roman_numeral(2421)
puts
puts old_roman_numeral(160)
puts old_roman_numeral(207)
puts old_roman_numeral(1009)
puts old_roman_numeral(1066)
puts
puts old_roman_numeral(1776)
puts old_roman_numeral(1918)
puts old_roman_numeral(1944)
puts old_roman_numeral(2026)
