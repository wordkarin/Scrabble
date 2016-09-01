require_relative 'spec_helper' #get all the stuff we need for testing.
require_relative '../player.rb' #include the code from player.rb that we need to test.

module Scrabble
  describe Player do
    let(:sebastian) {Player.new("Sebastian")} #This allows us to just use 'sebastian' as a new player throughout the tests.
    describe "#initialize" do
      it "should require a name paramter" do
        # Create a Scrabble::Player class with a minimum of 11 specs. The only required paramter for instances of the class is the player's name. Instances of the class should repond to the following messages:
        sebastian.must_be_instance_of(Player)
      end

      it "should return the value of the name instance variable" do
        # #name: returns the value of the @name instance variable
        #Strategy: Add an attribute reader so that the name that is passed into the initialize method sets the @name instance variable. This test calls .name on the new instance and returns the name.
        sebastian.name.must_equal("Sebastian")
      end
    end

    describe "#plays" do
      it "should return an array of the words played by the player" do
        # #plays: returns an Array of the words played by the player
        #Strategy: There is another instance variable (plays), that is initialized as an empty array, and gets  pushed to by the play(word) method.
        sebastian.plays.must_be_kind_of(Array)
      end
    end

    describe "#play(word)" do
      it "should add the word to the plays array" do
        # #play(word): Adds the input word to the plays Array
        #Strategy: This method takes in a word, and adds it to plays array. This method should also update the total score, by calling the "score" method in Scoring for the word played, taking the score that is returned, and adding to the total_score. This first test just tests that the word is added to the plays array.
        sebastian.play("meow")
        sebastian.plays.must_include("meow")
      end


      word = [cricket, 50, "pandering monkey", myopic, modish, 444, 16, "fanciful flamingo"]
      word = [CRICKET, 50, "PANDERING MONKEY", MYOPIC, MODISH, 444, 16, "FANCIFUL FLAMINGO"]
      word.each do |words|
        it "should raise an error if argument passed in is not valid a string" do
          #checks if the argument passed in is a single word string
          #proc {sebastian.play(word)}.must_raise(ArgumentError)
          return Scrabble::Player.play[words]
        end
      end
    end


    it "should return false if the player has already won" do
      # Returns false if player has already won
      #Strategy: This method will call the won? method, and should NOT update total_score if the player has already won.
      sebastian.total_score = 101
      sebastian.play("purr").must_equal(false)
    end

    it "should return the score of the word played" do
      # Returns the score of the word
      #Strategy: The "return" statement for the play(word) method should be the score of the word they just played.
      sebastian.play("purr").must_equal(6)

    end
  end

  describe "#total_score" do
    it "should return the sum of the scores of played words" do
      # #total_score: Returns the sum of scores of played words
      # Strategy: total_score is an instance variable that is intialized as 0 in the constructor.
      sebastian.play("purr") #worth 6 points
      sebastian.play("meow") #worth 9 points
      sebastian.total_score.must_equal(15)
    end
  end

  describe "#won?" do
    it "should return true if player has over 100 points" do
      # #won?: If the player has over 100 points, returns true, otherwise returns false
      #Strategy: This method is going to be called in the play(word) method, because we need to know whether the player has won, so that they stop playing word.
      11.times do
        sebastian.play("feline") #worth 9 points, total_score should be 99
      end

      sebastian.play("meow") #worth 9 points, total_score should now be worth 108
      sebastian.won?.must_equal(true)
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