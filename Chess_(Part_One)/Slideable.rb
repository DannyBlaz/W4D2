module Slideable

    # HORIZONTAL_DIRS stores an array of horizontal directions
      # when a piece moves in a given direction, its row and/or its column should increment by some value
      # ex: A piece starts at position [1, 2] and it moves horizontally to the left
        # its position changes to [1,1]
        # the row increases by 0 and the column decreases by 1
    HORIZONTAL_DIRS = [
      [ 0 , -1 ], # left
      [ 0 ,  1 ], # right
      [-1 ,  0 ], # up (vertical)
      [ 1 ,  0 ]  # down (vertical)
    ].freeze
  
    # DIAGONAL_DIRS stores an array of diagonal directions
    DIAGONAL_DIRS = [
      [-1 , -1 ], # up + left
      [-1 ,  1 ], # up + right
      [ 1 , -1 ], # down + left
      [ 1 ,  1 ]  # down + right
    ].freeze
  
  
    def horizontal_dirs
      # getter for HORIZONTAL_DIRS
      HORIZONTAL_DIRS
    end
  
    def diagonal_dirs
      # getter for DIAGONAL_DIRS
      DIAGONAL_DIRS
    end
  
  
    # should return an array of places a Piece can move to
    def moves
      # create array to collect moves
      possible_moves = []
  
      # iterate over each of the directions in which a slideable piece can move
        # use the Piece subclass' `#move_dirs` method to get this info
        # for each direction, collect all possible moves in that direction
          # and add them to your moves array 
          # (use the `grow_unblocked_moves_in_dir` helper method)
      self.move_dirs.each do |(dx, dy)|
        possible_moves << grow_unblocked_moves_in_dir(dx, dy)
      end
  
      # return the final array of moves (containing all possible moves in all directions)
      possible_moves
    end
  
  
    private
  
    # this helper method is only responsible for collecting all moves in a given direction
    # the given direction is represented by two args, the combination of a dx and dy
    def grow_unblocked_moves_in_dir(dx, dy)
      # create an array to collect moves
      valid_moves = []
      
      # get the piece's current row and current column
      cur_x, cur_y = self.position
  
      # in a loop:
        # increment the piece's current row and current column to generate a new position
        
        cur_x, cur_y = self.pos
        new_pos = [cur_x + dx, cur_y + dy]
        dx_array = []
        dy_array = []

        case dx
        when 0
          #code
        when 1
          #code
        when -1 
          #code
        end

        case dy
        when 0
          #code
        when 1
          #code
        when -1 
          #code
        end

        dx_dy = dx_array.zip(dy_array)

        #loop through dx_dy to check for nils, if false => valid_moves << arr.
        
        # if the new position is:
          # 1. invalid (off the board)
          #   * stop looping; the piece can't go any further in this direction
          (dx, dy).all? { |coord| coord.between?(0, 7) }
          # 2. empty
          #   * keep looping; the piece *can* go further in this direction
          #   * add position to moves array
          (current_board[cur_x + dx][cur_y + dy]).nil?
          # 3. occupied
          #   * stop looping; the piece can't go any further in this direction
          #   * if opposite color, add position to moves array
          #   * if same color, don't add position to moves array

  
      # return the final moves array
      valid_moves
    end
  
  
    def move_dirs
      # subclass implements this
      raise NotImplementedError # this only executes if subclass hasn't implemented #move_dirs
    end
  end
  
  # Note: you can invoke methods from the piece from within the module methods, and vice versa. It is a two way street!