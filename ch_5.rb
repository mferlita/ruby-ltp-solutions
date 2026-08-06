# frozen_string_literal: false

# Fancy String Methods
var1 = "stop"
var2 = "deliver repaid desserts"
var3 = "....TCELES B HSUP - A magic spell?"

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3
puts ""

puts "What is your first name?"
f_name = gets.chomp
puts "What is your middle name?"
m_name = gets.chomp
puts "What is your last name?"
l_name = gets.chomp
puts "Did you know there are #{f_name.length + m_name.length + l_name.length} characters"
puts "in your name, #{f_name} #{m_name} #{l_name}?"
puts ""

letters = "aAbBcCdDeE"
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts "a".capitalize
puts letters
puts ""

line_width = 50
puts(               "Old Mother Hubbard".center(line_width))
puts(              "Sat in her cupboard".center(line_width))
puts(       "Eating her curds and whey,".center(line_width))
puts(         "When along came a spider".center(line_width))
puts(          "Who sat down beside her".center(line_width))
puts("And scared her poor shoe dog away".center(line_width))
puts ""

line_width = 40
str = "==> text <=="
puts( str.ljust(line_width))
puts(str.center(line_width))
puts( str.rjust(line_width))
puts(str.ljust(line_width/2) + str.rjust(line_width/2))
puts ""

# continued in ch_5_angry_boss.rb and ch_5_table_of_contents.rb

# More Arithmetic
puts 5**2 # exponentiation
puts 5**0.5
puts 7/3 # normal integer division
puts 7%3 # modulus method gives remainder
puts 365%7
puts ""

# absolute value
puts (5-2).abs
puts (2-5).abs
puts ""

# Random numbers
puts rand
puts rand
puts rand
puts(rand(100))
puts(rand(100))
puts(rand(1))
puts(rand(1))
puts(rand(1))
puts(rand(9_999_999_999_999_999_999_999_999_999_999_999_999))
puts("My weather app there is a")
puts("#{rand(101)}% chance of rain,")
puts("but it's literally raining right now!")
puts ""

srand 1976
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ""
srand 1976
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ""

# The Math Object
puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5)) / 2) # golden ratio
# The Math object is a constant. Cannot reassign a new value to constants.
# Variables start with lower case letters. Constants start with upper case letter.
