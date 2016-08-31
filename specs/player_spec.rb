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
        #Strategy: Add an attribute reader so that the name that is passed into the initialize method sets the @name instance variable. This test calls .name on the new instance and returns the name.
      end
    end

    describe "#plays" do
      it "should return an array of the words played by the player" do
        skip
      # #plays: returns an Array of the words played by the player
      #Strategy: There is another instance variable (plays), that is initialized as an empty array, and gets pushed to by the play(word) method.
      end
    end

    describe "#play(word)" do
      it "should add the word to the @plays array" do
        skip
        # #play(word): Adds the input word to the plays Array
        #Strategy: This method takes in a word, and adds it to plays array. This method should also update the total score, by calling the "score" method in Scoring for the word played, taking the score that is returned, and adding to the total_score.
      end

      it "should return false if the player has already won" do
        skip
        # Returns false if player has already won
        #Strategy: This method will call the won? method, and should NOT update total_score if the player has already won.
      end

      it "should return the score of the word played" do
        skip
        # Returns the score of the word
        #Strategy: The "return" statement for the play(word) method should be the score of the word they just played.
      end
    end

    describe "#total_score" do
      it "should return the sum of the scores of played words" do
        skip
        # #total_score: Returns the sum of scores of played words
        # Strategy: total_score is an instance variable that is intialized as 0 in the constructor.
      end
    end

    describe "#won?" do
      it "should return true if player has over 100 points" do
        skip
      # #won?: If the player has over 100 points, returns true, otherwise returns false
      #Strategy: This method is going to be called in the play(word) method, because we need to know whether the player has won, so that they stop playing word.
      end
    end

    describe "#highest_scoring_word" do
      it "should return the highest scoring word the player has played" do
        skip
        # #highest_scoring_word: Returns the highest scoring played word
        #Strategy: This method should directly call highest_score_from the Scoring class, by passing in the @plays array.
      end
    end

    describe "#highest_word_score" do
      it "should return the score of the highest scoring word" do
        skip
        # #highest_word_score: Returns the highest_scoring_word score
        #Strategy: This method should directly call the score method from the Scoring class, by passing in the result of the highest_scoring_word from the Player class.  
      end
    end
  end
end
