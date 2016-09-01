require_relative 'spec_helper'
require_relative '../tile_bag'

# with a __minimum of 5 specs__. It should have the following class and instance methods:
# `#initialize` Called when you use `TileBag.new`, sets up an instance with a collection of default tiles
# `#draw_tiles(num)` returns `num` number of random tiles, removes the tiles from the default set.
# `#tiles_remaining` returns the number of tiles remaining in the bag
#
module Scrabble
  describe TileBag do
    let(:tiles){TileBag.new}
    describe "#initialize" do
      it "should be an instance of TileBag" do
        # strategy: each instance of TileBag sets up new collection of tiles in a hash, where the key is the letter, and the value is the number of tiles of that letter.
        # each of the methods on TileBag is an instance method (called on the new instance of TileBag.
        tiles.must_be_instance_of(TileBag)
      end

      it "should respond to .collection with a Hash of tiles" do
        # using attribute reader, @collection = collection, returns hash
        tiles.collection.must_be_kind_of(Hash)
      end

      it "should have a key of 'A'" do
        #TODO: should have another test in here that checks that the hash is populated with letters and has values of the number of tiles of that letter.
        tiles.collection.keys.must_include("A")
      end

      it "should start with 98 tiles" do
        #upon initialization, there should be a full set of 98 tiles.
        tiles.collection.values.reduce(:+).must_equal(98)
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
