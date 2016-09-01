require_relative 'scoring.rb'
module Scrabble
  class TileBag
    # ##### Initial Distribution of Letters
    # | Letter : Qty. |
    # |:------:|:-----:|
    # | A : 9  | N : 6 |
    # | B : 2  | O : 8 |
    # | C : 2  | P : 2 |
    # | D : 4  | Q : 1 |
    # | E : 12 | R : 6 |
    # | F : 2  | S : 4 |
    # | G : 3  | T : 6 |
    # | H : 2  | U : 4 |
    # | I : 9  | V : 2 |
    # | J : 1  | W : 2 |
    # | K : 1  | X : 1 |
    # | L : 4  | Y : 2 |
    # | M : 2  | Z : 1 |
    ORIGINAL_TILES = {
      "A" => 9, "N" => 6,
      "B" => 2, "O" => 8,
      "C" => 2, "P" => 2,
      "D" => 4, "Q" => 1,
      "E" => 12, "R" => 6,
      "F" => 2, "S" => 4,
      "G" => 3, "T" => 6,
      "H" => 2, "U" => 4,
      "I" => 9, "V" => 2,
      "J" => 1, "W" => 2,
      "K" => 1, "X" => 1,
      "L" => 4, "Y" => 2,
      "M" => 2, "Z" => 1
    }

  attr_reader :collection

  def initialize
    @collection = #something that multiples the keys by the values and adds them to this collection array.
  end

  def draw_tiles(num)
  end

  def tiles_remaining
    #this adds the values in the collection, the values are how many there are of each letter tile.
    tile.collection.length 
  end

  end
end

# #### Modifications to `Player`
# Create specs for (__minimum 2__) and add to the `Player` class the following instance methods:
#
# - `#tiles` a collection of letters that the player can play (max 7)
# - `#draw_tiles(tile_bag)` fills tiles array until it has 7 letters from the given tile bag
#
# ### Optional Enhancements
# - Create a `Scrabble::Dictionary` class that includes a method (class or instance) for searching a list of words to determine if a given word is valid (__minimum of 5 specs__).
# - Create a `Scrabble::Board` class (__minimum of 15 specs__) that has a matrix (array of arrays) of tile places. Check if a word can be played on a given tile place in a certain direction (up/down or left/right).
# -->
