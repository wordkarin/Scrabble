module Scrabble
  class Player
    attr_reader :name, :plays
    def initialize(name)
      @name = name
      @plays = []
    end

    def play(word)
      if word.class != String
        raise ArgumentError.new("To play a word, it must be a string.")
      end
      
      @plays << word
    end

  end
end
