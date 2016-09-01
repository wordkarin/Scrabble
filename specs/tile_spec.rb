require_relative 'spec_helper'
require_relative '../tile_bag'

# with a __minimum of 5 specs__. It should have the following class and instance methods:
# `#initialize` Called when you use `TileBag.new`, sets up an instance with a collection of default tiles
# `#draw_tiles(num)` returns `num` number of random tiles, removes the tiles from the default set.
# `#tiles_remaining` returns the number of tiles remaining in the bag
#
module Scrabble
  describe TileBag do
    let(:tile){TileBag.new}
    describe "#initialize" do
      it "should instantiate collection of tiles" do
        # strategy: each instance of TileBag sets up new collection of tiles
        # using attribute reader, @collection = collection, returns array of tiles. self.collection method holds each instance of collection mutating as tiles are drawn.
        # tile.collection.must_return_array(collection)
      end
    end

    describe "#draw_tiles(num)" do
      it "should return the number of default tiles" do
        # num: returns the value of the
        # Strategy: create method with parameter 'num' that returns 'num' default tiles and values by implementing 'tile.sample(num)' since each instance creates its own array draw_tiles method should use mutate that mutates using ruby pop method each time draw_tiles is called. this should return equal number of default tiles and the collection array should then reflect self - num of tiles drawn.
        # tile.draw_tiles(num).must_equal(num)
      end
    end

    describe "#tiles_remaining" do
      it "should return an array of the words played by the player" do
        #plays: returns collection of array at any time with players tiles remaining
        # tile.collection.must_return_updated(collection)
      end
    end
  end
end
