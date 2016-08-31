require_relative 'spec_helper' #get all the stuff we need for testing.
require_relative '../scoring.rb' #include all the code in scoring.rb that we need to test.
require_relative '../player.rb' #include the code from player.rb that we need to test.

module Scrabble
  describe Player do
    describe "#initialize" do
      it "should require a name paramter" do
        # Create a Scrabble::Player class with a minimum of 11 specs. The only required paramter for instances of the class is the player's name. Instances of the class should repond to the following messages:
        Player.new("Sebastian").must_be_instance_of(Player)
      end

      it "should return the value of the name instance variable" do
        skip
        # #name: returns the value of the @name instance variable
      end
    end

    describe "#plays" do
      it "should return an array of the words played by the player" do
        skip
      # #plays: returns an Array of the words played by the player
      end
    end

    describe "#play(word)" do
      it "should add the word to the @plays array" do
        skip
        # #play(word): Adds the input word to the plays Array
      end

      it "should return false if the player has already won" do
        skip
        # Returns false if player has already won
      end

      it "should return the score of the word played" do
        skip
        # Returns the score of the word
      end
    end

    describe "#total_score" do
      it "should return the sum of the scores of played words" do
        skip
        # #total_score: Returns the sum of scores of played words
      end
    end

    describe "#won?" do
      it "should return true if player has over 100 points" do
        skip
      # #won?: If the player has over 100 points, returns true, otherwise returns false
      end
    end

    describe "#highest_scoring_word" do
      it "should return the highest scoring word the player has played" do
        skip
        # #highest_scoring_word: Returns the highest scoring played word
      end
    end

    describe "#highest_word_score" do
      it "should return the score of the highest scoring word" do
        skip
        # #highest_word_score: Returns the highest_scoring_word score
      end
    end
  end
end
