# frozen_string_literal: false

# variable assignment
my_string = "...you can say that again..."
puts my_string
puts my_string
puts ""

# slightly more motivated variable assignment
name = "Anya Christina Emmanuella Jenkins Harris"
puts "My name is " + name + "."
puts "Wow!  " + name + "\nis a really long name!"
puts ""
#string interpolation
name = "Anya Christina Emmanuella Jenkins Harris"
puts "My name is #{name}."
puts "Wow! #{name}\nis a really long name!"
puts ""

# variable reassignment
composer = "Mozart"
puts "#{composer} was all the rage, in his day."

composer = "Beethoven"
puts "But I prefer #{composer}, personally."
puts""

# variables can point to any object, not just strings
my_own_var = "just another " + "string"
puts my_own_var

my_own_var = 5 * (1+2)
puts my_own_var
puts ""

# variables point to values
var1 = 8
var2 = var1
puts var1
puts var2

puts ""

var1 = "luck"
puts var1
puts var2
