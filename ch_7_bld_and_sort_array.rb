# frozen_string_literal: false

array = []

loop do
  guest = gets.chomp
  if guest != ''
    array.push guest
  elsif guest == ''
    puts "This array contains: #{array.sort}"
    break
  end
end
