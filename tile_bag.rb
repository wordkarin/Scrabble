require_relative 'scoring.rb' 

class TileBag < Scrabble
  attr_reader(tile)
#### `TileBag`
Create a `Scrabble::TileBag` class with a __minimum of 5 specs__. It should have the following class and instance methods:

- `#initialize` Called when you use `TileBag.new`, sets up an instance with a collection of default tiles
- `#draw_tiles(num)` returns `num` number of random tiles, removes the tiles from the default set.
- `#tiles_remaining` returns the number of tiles remaining in the bag

##### Initial Distribution of Letters
| Letter : Qty. |
|:------:|:-----:|
| A : 9  | N : 6 |
| B : 2  | O : 8 |
| C : 2  | P : 2 |
| D : 4  | Q : 1 |
| E : 12 | R : 6 |
| F : 2  | S : 4 |
| G : 3  | T : 6 |
| H : 2  | U : 4 |
| I : 9  | V : 2 |
| J : 1  | W : 2 |
| K : 1  | X : 1 |
| L : 4  | Y : 2 |
| M : 2  | Z : 1 |

#### Modifications to `Player`
Create specs for (__minimum 2__) and add to the `Player` class the following instance methods:

- `#tiles` a collection of letters that the player can play (max 7)
- `#draw_tiles(tile_bag)` fills tiles array until it has 7 letters from the given tile bag

### Optional Enhancements
- Create a `Scrabble::Dictionary` class that includes a method (class or instance) for searching a list of words to determine if a given word is valid (__minimum of 5 specs__).
- Create a `Scrabble::Board` class (__minimum of 15 specs__) that has a matrix (array of arrays) of tile places. Check if a word can be played on a given tile place in a certain direction (up/down or left/right).
-->
