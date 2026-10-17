# frozen_string_literal: false

bye_count = 0

puts "HELLO, DEARY!"

loop do
  grandchild = gets.chomp
  if grandchild != grandchild.upcase
    bye_count = 0
    puts "HUH?! SPEAK UP, DEAR!"
  elsif grandchild == "bye".upcase
    bye_count += 1
    if bye_count == 3
      puts "OKAY THEN, DEARY. I'LL SEE YOU LATER!"
      break
    end
  else
    bye_count = 0
    puts "NO, NOT SINCE #{rand(1930..1950)}!"
  end
end
