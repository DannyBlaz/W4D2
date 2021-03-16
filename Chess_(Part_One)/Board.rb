require_relative "Piece"

class Board
    attr_accessor :board

    def initialize
        @board = Array.new(8) { Array.new(8) }
    end

    def move_piece(start_pos, end_pos)
        start_row, start_col = start_pos
        end_row, end_col = end_pos

        if @board[start_row][start_col] == NullPiece
            raise "No piece at position"
        elsif self.valid_move? == false
            raise "Not a valid move"
        end

        @board[start_row][start_col] = NullPiece
        @board[end_row][end_col] = piece
        self.location = [end_row][end_col]
    end

end 