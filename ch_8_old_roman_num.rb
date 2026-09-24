# frozen_string_literal: false

# To be honest I was stumped on how to do this, so I looked at the answer key.
# After realizing what Mr. Pine was doing in the "how you could do it" solution,
# my first thought was "Why couldn't you just parse each integer apart instead
# of having to do all that math? So, I threw the passed number into an array and
# just dealt with each integer based on where it was in the array.

# I then noticed that every five numbers, the smaller numerals (I, for example)
# would reset and new larger numerals (like V) would be introduced. To get the
# symbols to repeat the correct amount of times, I divided the digit by five for
# the larger numeral and used the remainder to get the right amount of smaller
# numerals.

# I(1), V(5), X(10), L(50), C(100), D(500), M(1000)
# Write a method that when passed an integer between 1 and 3000 (or so) returns
# a string containing the proper old school numeral.
# old_roman_numeral(4) should return IIII.
# Integer division and modulus methods.

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
