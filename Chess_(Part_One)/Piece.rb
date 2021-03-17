require 'colorize'
require 'colorized_string'
# require_relative 'Board'

class Piece
    attr_reader :pos, :color, :symbol

    def initialize(pos, sym, board, color)
        @pos = pos
        @color = color
        @symbol = sym
        @board = board
    end

    def to_s
        self.symbol.colorize(color)
    end
    
    def add_piece
        starting = self.pos
        @board[starting[0]][starting[1]] = self.name
    end
end

# class NullPiece < Piece

    
# end
# puts queen = "♛ "
# puts queen = "♛ ".colorize(:red)
# puts queen = "♛".colorize(:blue)
# puts "testing".colorize(:blue)
# puts String.colors
# puts String.disable_colorization