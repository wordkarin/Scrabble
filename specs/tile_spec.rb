require_relative 'spec_helper'
require_relative '../tile_bag'

# START HERE!!!
# KNK: I had initially thought that we'd want to start with a hash, where the keys are the letters and the values are the number of that particular tile. However, after chatting with Danielle, I think that the collection instance variable SHOULD actually be an array and that we use the shuffle and pop methods (I think you had that idea too), and that way we don't have to keep track of the number of each letter, we just have an array of the letters.
# Also, this will give weight to each letter based on how many of that letter we started with.
# The hash I created can be a constant -- it's a new tile bag's original set.
# The @collection instance variable should be an array and it can be created from the constant hash.

module Scrabble
  describe TileBag do
    let(:tiles){TileBag.new}
    describe "#initialize" do
      it "should be an instance of TileBag" do
        # strategy: each instance of TileBag sets up new collection of tiles in a hash, where the key is the letter, and the value is the number of tiles of that letter.
        # each of the methods on TileBag is an instance method (called on the new instance of TileBag.
        tiles.must_be_instance_of(TileBag)
      end

      it "should respond to .collection with a array of tiles" do
        skip
        # using attribute reader, @collection = collection, returns array
        tiles.collection.must_be_kind_of(Array)
      end

      it "should include an 'A'" do
        skip
        #should have another test in here that checks that the hash is populated with letters and has values of the number of tiles of that letter.
        tiles.collection.must_include("A")
      end

      it "should start with 98 tiles" do
        skip
        #upon initialization, there should be a full set of 98 tiles.
        tiles.collection.length.must_equal(98)
      end
    end

    describe "#draw_tiles(num)" do
      it "should return the number of default tiles" do
        skip
        # Strategy: create method with parameter 'num' that returns 'num' tiles and values by implementing 'tile.sample(num)' since each instance creates its own hash.
        # draw_tiles method should update the value of the tile.collection hash (subtract one from the value of the tile drawn)
        # this should return equal number of default tiles and the collection array should then reflect self - num of tiles drawn.
        # tile.draw_tiles(num).must_equal(num)
      end

      it ".collection should return a different hash as tiles are drawn" do
        skip
        # collection method holds each instance of collection mutating as tiles are drawn.
      end
    end

    describe "#tiles_remaining" do
      it "should return the number of tiles left in the bag" do
        #returns the number of tiles left in the bag, not an array.
        skip
        tiles.draw_tiles(5) #start with 98 tiles, remove 5 with draw_tiles method.
        tiles.tiles_remaining.must_equal(93) #should now have 93 left.
      end
    end
  end
end
