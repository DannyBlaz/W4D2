require_relative '../Piece'
require_relative '../Slideable'

class Bishop < Piece
    include Slideable
    attr_reader :sym, :pos, :board, :color
    
    def initialize(pos, sym, board, color)
        super
        @symbol = sym
    end

    def move_dirs
        diagonal_dirs
    end

end