# frozen_string_literal: false

# This method when passed a number between 1 and 3,999 converts it to roman
# numerals, but without subtractive notation.

# Note: Roman numerals can only go to 3,999 without additional notation.

def old_roman_num(num)
  if num <= 0 || num >= 4_000
    raise "Must use positive integer less than 4,000"
  end

  chopped_num = num.digits.reverse

  while chopped_num.length < 4 # make sure the array is always made of 4 digits
    chopped_num.unshift(0) # add zeros to the beginning of the array
  end

  roman = "M" * chopped_num[0]
  roman += "D" * (chopped_num[1] / 5) # repeat "D" by the correct amount
  roman += "C" * (chopped_num[1] % 5) # repeat "C" by the correct amount
  roman += "L" * (chopped_num[2] / 5)
  roman += "X" * (chopped_num[2] % 5)
  roman += "V" * (chopped_num[3] / 5)
  roman += "I" * (chopped_num[3] % 5)

  puts num
  roman
end

puts old_roman_num(1984)
puts
puts old_roman_num(984)
puts
puts old_roman_num(84)
puts
puts old_roman_num(4)
puts
puts old_roman_num(1999) # From answer key. Should be MDCCCCLXXXXVIIII
puts
puts old_roman_num(1992)
puts
puts old_roman_num(2004)
puts
# The following numbers are from Wikipedia, retrieved 9/22/26.
puts old_roman_num(39)
puts
puts old_roman_num(246)
puts
puts old_roman_num(789)
puts
puts old_roman_num(2421)
puts
puts old_roman_num(160)
puts
puts old_roman_num(207)
puts
puts old_roman_num(1009)
puts
puts old_roman_num(1066)
puts
puts old_roman_num(1776)
puts
puts old_roman_num(1918)
puts
puts old_roman_num(1944)
puts
puts old_roman_num(2026)
puts
puts old_roman_num(3999)
