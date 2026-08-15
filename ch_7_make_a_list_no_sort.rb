# frozen_string_literal: false

# list = []
# alphabetized_list = []
#
# loop do
#   guest = gets.chomp
#   if guest != ''
#     list.push guest
#   elsif guest == ''
#     alphabetized_list.push list.delete(list.min) until list.empty?
#     puts "This list contains: #{alphabetized_list.join(', ')}"
#     break
#   end
# end

puts "Give me some words and I'll make a list for you."
words = []
list = []

while true
  guest = gets.chomp
  words.push(guest)
  break if guest.empty?
  list.push(words.delete(words.min)) until words.empty?
end

puts "Here's your list: #{list.join(", ")}"
puts "Or:"
puts list