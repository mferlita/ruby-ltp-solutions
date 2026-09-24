# frozen_string_literal: false

# For this one, everything is the same as old_roman_num except we need some
# conditionals for the 4th and 9th numbers, which use subtractive notation
# instead of the original additive notation. Instead of IIII, 4 is now IV.

def new_roman_num(num)
  if num <= 0 || num >= 4_000
    raise "Must use positive integer less than 4,000"
  end

  chopped_num = num.digits.reverse

  while chopped_num.length < 4 # make sure the array is always made of 4 digits
    chopped_num.unshift(0) # add zeros to the beginning of the array
  end

  roman = "M" * chopped_num[0]

  if chopped_num[1] == 9
    roman += "CM" # 1000(M) - 100(C) = 900
  elsif chopped_num[1] == 4
    roman += "CD" # 500(D) - 100(C) = 400
  else
    roman += "D" * (chopped_num[1] / 5) # repeat "D" by the correct amount
    roman += "C" * (chopped_num[1] % 5) # repeat "C" by the correct amount
  end

  if chopped_num[2] == 9
    roman += "XC" # 100(C) - 10(X) = 90
  elsif chopped_num[2] == 4
    roman += "XL" # 50(L) - 10(X) = 40
  else
    roman += "L" * (chopped_num[2] / 5)
    roman += "X" * (chopped_num[2] % 5)
  end

  if chopped_num[3] == 9
    roman += "IX" # 10(X) - 1(I) = 9
  elsif chopped_num[3] == 4
    roman += "IV" # 5(V) - 1(I) = 4
  else
    roman += "V" * (chopped_num[3] / 5)
    roman += "I" * (chopped_num[3] % 5)
  end

  puts num
  roman
end

puts new_roman_num(1984)
puts
puts new_roman_num(984)
puts
puts new_roman_num(84)
puts
puts new_roman_num(4)
puts
puts new_roman_num(1999) # From answer key. Should be MCMXCIX
puts
puts new_roman_num(1992)
puts
puts new_roman_num(2004)
puts
# The following are from Wikipedia, retrieved 9/22/26.
puts new_roman_num(39) # Should be: XXXIX
puts
puts new_roman_num(246) # CCXLVI
puts
puts new_roman_num(789) # DCCLXXXIX
puts
puts new_roman_num(2421) # MMCDXXI
puts
puts new_roman_num(160) # CLX
puts
puts new_roman_num(207) # CCVII
puts
puts new_roman_num(1009) # MIX
puts
puts new_roman_num(1066) # MLXVI
puts
puts new_roman_num(1776) # MDCCLXXVI
puts
puts new_roman_num(1918) # MCMXVIII
puts
puts new_roman_num(1944) # MCMXLIV
puts
puts new_roman_num(2026) # MMXXVI
puts
puts new_roman_num(3999) # MMMCMXCIX
