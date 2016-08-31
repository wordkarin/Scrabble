require_relative 'spec_helper' #get all the stuff we need for testing.
require_relative '../scoring.rb' #include all the code in scoring.rb that we need to test.

##NE: 68: changed 'grape' => 'GRAPE' re: upcase! in self(score)

module Scrabble
  #Since all the tests in this spec correspond to Scoring, which lives inside Scrabble, can wrap the tests in the module also.
  describe Scoring do
    describe "#initialize" do
      it "should make a new instance of Scoring" do
        #this is testing that you can create a new instance of the Scoring class
        Scoring.new.must_be_instance_of(Scoring)
      end
    end

    describe "#class" do
      it "should have a LETTER_SCORE length of 26" do
        #this just tests that the LETTER_SCORE data store has the correct length.
        Scoring::LETTER_SCORE.length.must_equal(26)
      end

      it "should have the correct LETTER_SCORE for a letter" do
        #Spot-check the constant LETTER_SCORE for correct letter score.
        Scoring::LETTER_SCORE["A"].must_equal 1
      end

    end

    describe "score" do
      it "should raise an error when a non-letter is passed in" do

      end

      it "should have a score method that takes in a word" do
        # From the requirements: self.score(word): returns the total score value for the given word. The word is input as a string (case insensitive). The chart in the baseline requirements shows the point value for a given letter.
        Scoring.score("cat")
      end

      it "score method should return the correct score" do
        skip
        # This test will input a specific word with a known score, assert equal that the score the method returns is the same.
        word = "cat"
        Scoring.score(word).must_equal(5)
      end

      it "score method should add 50 points to a 7 letter word" do
        # From the requirements: A seven letter word means that a player used all the tiles. Seven letter words receive a 50 point bonus.
        word = "aarrghh"
        Scoring.score(word).must_equal(64)
      end

      it "score method should be case insensitive" do
        # self.score(word): returns the total score value for the given word. The word is input as a string (case insensitive). The chart in the baseline requirements shows the point value for a given letter.
        weird_word = "KiTTeN"
        word = "kitten"
        Scoring.score(weird_word).must_be_same_as(Scoring.score(word))
      end

      it "should have a highest_score_from method that takes in an array of words" do
        # From the requirements: self.highest_score_from(array_of_words): returns the word in the array with the highest score.
        # This tests that the method exists and takes in the right number of arguments.
        array_of_words = %w(cat hat grape)
        Scoring.highest_score_from(array_of_words)
      end

      it "should have a highest_score_from method that takes in an array of words" do
        # From the requirements: self.highest_score_from(array_of_words): returns the word in the array with the highest score.
        # This tests that the correct word is returned.
        array_of_words = %w(cat hat grape)
        Scoring.highest_score_from(array_of_words).must_equal("GRAPE")
      end

      it "highest_score_from should return the smaller of two words with the same score" do
        # From the requirements: It’s better to use fewer tiles, in the case of a tie, prefer the work with the fewest letters.
        # We can make a word array with just two words in it that have the same score, and pass it into the highest_score_from method.
      end

      it "highest_score_from returns seven letter word even if there's shorter higher score word" do
        skip
        # From the requirements: There is a bonus for words that are seven letters. If the top score is tied between multiple words and one used all seven letters, choose the one with seven letters over the one with fewer tiles.
      end

      it "highest score method returns first word if there's a tie in score/length" do
        skip
        # From the requirements: If the there are multiple words that are the same score and same length, pick the first one in the supplied list.
      end
    end
  end
end
