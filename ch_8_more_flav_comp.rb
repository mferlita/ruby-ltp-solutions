# frozen_string_literal: false

flavors = [
  "vanilla",
  "chocolate",
  "rhubarb",
  "pistachio",
  "spumoni",
  "green tea",
  "strawberry"
]

def pair_up(array) # [1,2,3,4,5] -> [[1,2], [3,4], [5,6]]
  array.each_slice(2).to_a
end

def ask_for_winner(match)
  puts "1. " + match[0]
  puts "2. " + match[1]

  loop do
    answer = gets.chomp.downcase
    if answer == "1" || answer == "2"
      return match[answer.to_i - 1]
    else
      puts "Please answer '1' or '2'."
    end
  end
end

# play just one round of the tournament
def play_round(round, round_num)
  winners = []

  round.each_with_index do |match, idx|
    if match.length == 1
      # We had an odd number of flavors for this round,
      #  so this one silently advances by default.
      winners.push(match[0])
    else
      match_num = idx + 1
      puts
      if round.length == 1
        puts "CHAMPIONSHIP MATCH!"
      else
        puts "ROUND #{round_num}, MATCH #{match_num}"
      end
      puts "Which flavor is best?"
      winners.push(ask_for_winner(match))
    end
  end

  winners
end

# "round" will be an array of arrays of matches:
# rounds = [
# [match_1, match_2, ...], # round 1
# [match_1, match_2, ...], # round 2
# ...
# ]
# each match is an array of two flavors
rounds = []

# populate "rounds" with Round 1 matches
rounds.push(pair_up(flavors))
round_idx = 0


puts "Welcome to ULTIMATE FLAVOR TOURNAMENT!"

# each pass of this loop is a new round
loop do
  winners = play_round(rounds[round_idx], round_idx + 1)

  if winners.length >= 2
    # prepare for next round
    rounds.push(pair_up(winners))
    round_idx += 1
  else
    # We have a winner!
    puts
    puts "And the Ultimate Flavor Champion is:"
    puts winners[0].upcase + "!!"
    break
  end
end