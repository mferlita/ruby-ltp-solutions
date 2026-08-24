# frozen_string_literal: false

####### Commented out is my original program. It works fine, #######
####### but there's a bit of redundancy.                     #######

# puts 'Please enter a starting year (the earliest year in the range).'
# start_year = gets.to_i
# puts 'Please enter an ending year (the latest year in the range).'
# end_year = gets.to_i
# puts 'The leap years are:'
#
# while start_year <= end_year
#   if (start_year % 400).zero?
#     puts start_year
#   elsif (start_year % 100).zero?
#     puts ''
#   elsif (start_year % 4).zero?
#     puts start_year
#   end
#   start_year += 1
# end

# Revamped
puts 'Please enter a starting year (the earliest year in the range).'
start_year = gets.to_i
puts 'Please enter an ending year (the latest year in the range).'
end_year = gets.to_i
puts 'The leap years are:'
year = start_year

while year <= end_year
  if year % 4 == 0
    if year % 100 != 0 || year % 400 == 0
    puts year
    end
  end
  year += 1
end
