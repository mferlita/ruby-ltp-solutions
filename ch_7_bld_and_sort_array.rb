# frozen_string_literal: false

####### My original attempt is commented out. #######

# array = []
#
# loop do
#   guest = gets.chomp
#   if guest != ''
#     array.push guest
#   elsif guest == ''
#     puts "This array contains: #{array.sort}"
#     break
#   end
# end

puts "Give me some words and I'll sort them."
words = []

while true
  guest = gets.chomp
  break if guest.empty?
  words.push(guest)
end

puts "Here you go: #{words.sort}"
puts "Or:"
puts words.sort
