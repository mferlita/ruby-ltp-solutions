# frozen_string_literal: false

# table_contents = [
#   'Table of Contents', 'Chapter 1: Numbers', 'page 1', 'Chapter 2: Letters', 'page 2',
#   'Chapter 3: Variables', 'page 3'
# ]
#
# line_width = 50
# count = 0
#
# puts table_contents[0].center line_width
# puts ''
# while count != 6
#   puts table_contents[count += 1].ljust(line_width / 2) + table_contents[count += 1].rjust(line_width / 2)
# end

title = "Table of Contents"
line_width = 50

chapters = [["Numbers", 1],
            ["Letters", 5],
            ["Variables", 9]]

chap_num = 1

puts title.center(line_width)
puts
chapters.each do |chap|
  name = chap[0]
  page = chap[1]
  beginning = "Chapter #{chap_num}: #{name}"
  ending = "page #{page}"
  chap_num += 1
  puts beginning.ljust(line_width/2) + ending.rjust(line_width/2)
end
