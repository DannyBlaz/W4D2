require_relative '../Piece'
require_relative '../Slideable'

class Queen < Piece
    include Slideable
    attr_reader :sym, :pos, :board, :color
    
    def initialize(pos, sym, board, color)
        super
        @symbol = sym
    end

    def move_dirs
        diagonal_dirs + horizontal_dirs
    end

end