require 'colorize'
require_relative "Piece"
require_relative "Modules"
require_relative "./Pieces/Rook"
require_relative "./Pieces/Bishop"
require_relative "./Pieces/King"
require_relative "./Pieces/Knight"
require_relative "./Pieces/Queen"
require_relative "./Pieces/Pawn"



class Board
    attr_accessor :grid

    def initialize
        @grid = Array.new(8) { Array.new(8, [])}
        
        
    end
    
    def new_board
        @grid[0].map!.with_index do |ele, idx|
            if idx == 0 || idx == 7
                Rook.new([0, idx], "♖", grid, :blue)
            elsif idx == 1 || idx == 6
                Knight.new([0, idx], "♘", grid, :blue)
            elsif idx == 2 || idx == 5
                Bishop.new([0, idx], "♗", grid, :blue)
            elsif idx == 3
                Queen.new([0, idx], "♕", grid, :blue)
            elsif idx == 4
                King.new([0, idx], "♔", grid, :blue)
            end
        end
        @grid[1].map!.with_index do |ele, idx|
            Pawn.new([1, idx], "♙", grid, :blue)
        end
        @grid[2].fill(nil)
        @grid[3].fill(nil)
        @grid[4].fill(nil)
        @grid[5].fill(nil)
        @grid[6].map!.with_index do |ele, idx|
            Pawn.new([6, idx], "♟︎", grid, :red)
        end
        @grid[7].map!.with_index do |ele, idx|
            if idx == 0 || idx == 7
                Rook.new([7, idx], "♜", grid, :red)
            elsif idx == 1 || idx == 6
                Knight.new([7, idx], "♞", grid, :red)
            elsif idx == 2 || idx == 5
                Bishop.new([7, idx], "♝", grid, :red)
            elsif idx == 3
                Queen.new([7, idx], "♛", grid, :red)
            elsif idx == 4
                King.new([7, idx], "♚", grid, :red)
            end
        end
        @grid
    end


    def move_piece(start_pos, end_pos)
        start_row, start_col = start_pos
        end_row, end_col = end_pos
        
        if @grid[start_row][start_col] == nil
            raise "No piece at position"
        elsif @grid[end_row][end_col] != nil
            raise "There is a piece at that position"
        elsif self.valid_move?
            raise "Not a valid move"
        end
        
        @grid[end_row][end_col] = @grid[start_row][start_col]
        @grid[start_row][start_col] = nil
    end
    
    def [](pos)
        row, col = pos
        @grid[row][col]
    end
    
    private
    
    def []=(pos, val)
       row, col = pos
        @grid[row][col] = val 
    end

end
board1 = Board.new

board1.new_board.each do |row|
    row.map! do |ele|
        ele
    end
    puts row.join("  ")
end