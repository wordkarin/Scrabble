module Scrabble
  class Player
    attr_reader :name, :plays, :total_score
    attr_writer :total_score #this is for testing purposes - I am writing total score in one of the tests, but I don't think that the program should have access to write the total score.
    def initialize(name)
      @name = name
      @plays = []
      @total_score = 0
    end

    def play(word)
      #play(word): Adds the input word to the plays Array
      #Strategy: This method takes in a word, and adds it to plays array. This method should also update the total score, by calling the "score" method in Scoring for the word played, taking the score that is returned, and adding to the total_score. This first test just tests that the word is added to the plays array.
      if word.class != String
        raise ArgumentError.new("To play a word, it must be a string.")
      end

      if won?
        return false
      end

      @plays << word
    end

    def won?
      #won?: If the player has over 100 points, returns true, otherwise returns false
      if @total_score > 100
        return true
      else
        return false
      end
    end
  end
end
