require_relative 'spec_helper' #get all the stuff we need for testing.
require_relative '../scoring.rb' #include all the code in scoring.rb that we need to test.

describe Scrabble::Scoring do
  describe "#initialize" do
    it "should make a new instance of Scoring" do
      #this is testing that you can create a new instance of the Scoring class
      Scrabble::Scoring.new.must_be_instance_of(Scrabble::Scoring)
    end
  end
  describe "#class" do
    it "should have a LETTER_SCORE length of 26" do
      Scrabble::Scoring::LETTER_SCORE.length.must_equal(26)  
    end
  end
end
