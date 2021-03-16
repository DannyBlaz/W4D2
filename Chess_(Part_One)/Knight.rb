require_relative "Piece"

class Knight < Stepping
    def initialize(name)
        @name = name
    end

    def self.valid_moves(pos)
        possible_moves = []
        (0...8).each do |idx1|
            (0...8).each do |idx2|
                if pos[0] + 2 == idx1 || pos[0] - 2 == idx1
                    if pos[1] + 1 == idx2 || pos[1] - 1 == idx2
                        possible_moves << [idx1,idx2]
                    end
                end
                 if pos[0] + 1 == idx1 || pos[0] - 1 == idx1
                    if pos[1] + 2 == idx2 || pos[1] - 2 == idx2
                        possible_moves << [idx1,idx2]
                    end
                end
            end

        end
        possible_moves
    end
end