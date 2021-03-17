require_relative '../Piece'

class Pawn < Piece
    attr_reader :sym, :pos, :board, :color
    
    def initialize(pos, sym, board, color)
        super
        @symbol = sym
    end

end