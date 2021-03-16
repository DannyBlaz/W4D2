require_relative "Piece"
require_relative "Module"

class Board
    attr_accessor :board

    
    
    def initialize(@piece)
        @board = Array.new(8) { Array.new(8) }
        @piece = Piece.new
        
    end
    
    def new_board
        @board[0].fill(@piece)
        @board[1].fill(@piece)
        @board[2].fill(nil)
        @board[3].fill(nil)
        @board[4].fill(nil)
        @board[5].fill(nil)
        @board[6].fill(@piece)
        @board[7].fill(@piece)
        @board
    end


    def move_piece(start_pos, end_pos)
        start_row, start_col = start_pos
        end_row, end_col = end_pos
        
        if @board[start_row][start_col] == nil
            raise "No piece at position"
        elsif self.valid_move? == false
            raise "Not a valid move"
        end
        
        @board[start_row][start_col] = NullPiece
        @board[end_row][end_col] = piece
        self.location = [end_row][end_col]
    end
    
    def [](pos)
        row, col = pos
        @board[row][col]
    end
    
    private
    
    def []=(pos, val)
       row, col = pos
        @board[row][col] = val 
    end

end 