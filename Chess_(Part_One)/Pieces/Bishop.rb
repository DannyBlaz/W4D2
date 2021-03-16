require_relative "Piece"

class Bishop
    include Sliding

    def initialize(name)
        @name = name
    end

    #still need to impliment the inability to jump over piece 
    def self.valid_moves?(pos)
        possible_moves = []
        (0...8).each do |idx1|
            (0...8).each do |idx2|
                #diagonal
                if pos[0] + 7 >= idx1 || pos[0] - 7 >= idx1
                    if pos[1] + 7 >= idx2 || pos[1] - 7 >= idx2
                        possible_moves << [idx1,idx2]
                    end
                end
                #forward
                #  if pos[0] + 1 == idx1 || pos[0] - 1 == idx1
                #     if pos[1] == idx2 || pos[1] == idx2
                #         possible_moves << [idx1,idx2]
                #     end
                # end
                # #sideways
                #  if pos[0] == idx1 || pos[0] == idx1
                #     if pos[1] + 1 == idx2 || pos[1] - 1 == idx2
                #         possible_moves << [idx1,idx2]
                #     end
                # end
            end

        end
        possible_moves
    end
    
end
