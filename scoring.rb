module Scrabble
  class Scoring
    #KNK: I think we should store the letter scores in a hash. We'll probably want to use the letters as the keys, and the scores as the values, as it sounds like we'll be looking up the value for each letter in the words we're scoring.
    LETTER_SCORE = {
      "A" => 1,
      "E" => 1,
      "I" => 1,
      "O" => 1,
      "U" => 1,
      "L" => 1,
      "N" => 1,
      "R" => 1,
      "S" => 1,
      "T" => 1,
      "D" => 2,
      "G" => 2,
      "B" => 3,
      "C" => 3,
      "M" => 3,
      "P" => 3,
      "F" => 4,
      "H" => 4,
      "V" => 4,
      "W" => 4,
      "Y" => 4,
      "K" => 5,
      "J" => 8,
      "X" => 8,
      "Q" => 10,
      "Z" => 10,
    }
    def initialize

    end
  end
end


# Primary Requirements
#
# Create a Scrabble::Scoring class with a minimum of 8 specs. The class should have the following class methods:
#
# self.score(word): returns the total score value for the given word. The word is input as a string (case insensitive). The chart in the baseline requirements shows the point value for a given letter.
# A seven letter word means that a player used all the tiles. Seven letter words receive a 50 point bonus.
# self.highest_score_from(array_of_words): returns the word in the array with the highest score. In the case of tie, use these tiebreaking rules:
# It’s better to use fewer tiles, in the case of a tie, prefer the work with the fewest letters.
# There is a bonus for words that are seven letters. If the top score is tied between multiple words and one used all seven letters, choose the one with seven letters over the one with fewer tiles.
# If the there are multiple words that are the same score and same length, pick the first one in the supplied list.
