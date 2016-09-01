require_relative 'scoring.rb' #include all the code in scoring.rb that we need to access here.

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
      #Strategy: This method takes in a word, and adds it to plays array. This method should also update the total score, by calling the "score" method in Scoring for the word played, taking the score that is returned, and adding to the total_score.

      #this checks if the argument passed in is a string.
      if word.class != String
        raise ArgumentError.new("To play a word, it must be a string.")
      end

      #this checks if the user has already won and therefore cannot play another word.
      if won?
        return false
      end
      #adds the word to the plays array.
      @plays << word

      #gets the score for the word
      word_score = Scoring.score(word)
      #updates the total score.
      @total_score += word_score

      #returns the score of the word.
      return word_score
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
