module Scrabble
  class Scoring
    #NE: First off, Wow! You are rocking this! I implemented a soft wrap on it/hope that's ok. The self highest score logic eludes me-- If I have time I will write it out how I would and compare to yours, if not I will ask you about it :)
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

    def shortest(array)
      shortest = (array).min_by { |x| x.length }
      return shortest
    end

    def seven(array)
      seven = (array).select {|a| a.length == 7}
        return seven
    end

    def self.score(word)
      #This method takes in a word and outputs a score based on the sum of its LETTER_SCORE.
      #This method should not be case sensititve. The LETTER_SCORE keys are caps, so we should capitalize the word argument on input.
      word.upcase!
      #Then we split the word into an array of letters:
      word_array = word.split(//)
      word_score = 0
      #Then we start looking up the scores, and adding them to a word_score variable.
      word_array.each do |letter|
        word_score += LETTER_SCORE[letter]
      end

      #If word is 7 letters long, add 50 point bonus.
      if word_array.length == 7
        word_score += 50
      end

      return word_score
    end

    def self.highest_score_from(array_of_words)

      #start by iterating over the array of words to generate a score hash.
      #the idea is that we'll have a hash where the key will be the score, and the value will be an array of words with that score.
      scores = {}
      array_of_words.each do |word|
        if scores.has_key?(score(word))
         scores[score(word)] << word ##SPECIFICALLY THIS LINE
        else
         scores[score(word)] = [word]
        end
      end


      #then, we'll be able to generate a scores array from the keys of the hash, find the max
      max_score = scores.keys.max

      #then, we'll be able to get the array of words associated with that max score.
      highest_score_words = scores[max_score]

      #if there's more than one word in that array, pick the shortest word.
      if highest_score_words.length == 1
        return highest_score_words[0]
      elsif highest_score_words.length == 7
        return highest_score_words.select {|a| a.length == 7}
        #return highest_score_words.seven
      else
         return highest_score_words.min_by { |x| x.length }
         #return highest_score_words.shortest
      end
    end

## NE: this was me just testing the seven and shortest methods
# highest_score_words = ["Peaches", "Zodiac", "Turner", "Metriculate", "onus", "xi", "zealous", "zealot", "fecund"]

  end
end
