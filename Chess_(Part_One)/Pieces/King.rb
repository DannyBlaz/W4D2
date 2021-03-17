require_relative '../Piece'
require_relative '../Stepable'

class King < Piece
    include Stepable
    attr_reader :sym, :pos, :board, :color
    
    def initialize(pos, sym, board, color)
        super
        @symbol = sym
    end

    def move_diffs
       
    end
end