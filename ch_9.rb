# frozen_string_literal: false

##### Saving and Loading for Grown-Ups #####
# The filename doesn't have to end with ".txt"
# but since it is valid, why not?
filename = "ListerQuote.txt"
test_string = "I promise that I swear absolutately that " \
  "I will never mention gazpacho soup again."

# The "w" here is for write access to the file
# since we are trying to write to it.
File.open(filename, "w") do |f|
  f.write(test_string)
end

read_string = File.read(filename)

puts read_string == test_string

##### JSON #####
require "json" # Sir, I require the JSON.

test_array = ["Give Quiche A Chance",
  "Mutants Out!",
  "Chameleonic Life-Forms, No Thanks"]

# Here's half of the magic:
test_string = test_array.to_json
# You see? Kind of like 'to_s', and it is in fact a string,
# but it's a JSON description of 'test_array'.

filename = "RimmerTShirts.txt"

File.open(filename, "w") do |f|
  f.write(test_string)
end

read_string = File.read(filename)

# And the other half of the magic:
read_array = JSON.parse(read_string)

puts read_string == test_string
puts read_array == test_array

##### Back to Our Regularly Scheduled Programming #####
# First define these fancy methods...
def json_save(object, filename)
  File.open(filename, "w") do |f|
    f.write(object.to_json)
  end
end

def json_load(filename)
  json_string = File.read(filename)

  JSON.parse(json_string)
end

# ...and now use these fancy methods.
test_array = [
  "Slick Shoes",
  "Bully Blunders",
  "Pinchers of Peril"
]

filename = "DataGadgets.txt"

json_save(test_array, filename) # we save it...
read_array = json_load(filename) # we load it...
puts read_array == test_array # we verify it.

##### Renaming Photos #####
# Let's go to the directory where we ant our photos to be.
Dir.chdir("/home/matt/Photos/Holidays")

# First we find all of the photos to be moved.
pic_names = Dir["/home/matt/ProgPhoto/**/*.JPG"]

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

# This will be our counter
pic_number = 1

pic_names.each do |name|
  print "." # This is our progress bar

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  # This renames the photo, but since 'name'
  # has a big long path on it, and 'new_name'
  # doesn't, it also moves the file to the
  # current working directory, which is now
  # my Holiday photos folder.
  # Since it's a *move*, this effectively
  # deletes the originals.
  # The little dots will let us know
  # the program isn't hanging.
  File.rename(name, new_name)

  # Finally, we increment the counter.
  pic_number += 1
end

puts # This is so we're not on the progress bar line.
puts "All done."
