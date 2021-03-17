module Sliding
    def rook_valid_move?(start_pos, end_pos)
        possible_moves = []
        # 4,5 starting
        # 4...8 horizontal
        (start_pos[0]...8).each do |idx11|
            possible_moves << [idx11,start_pos[1]] unless idx11 == start_pos[0]
        end
        # 0...4
        (0...start_pos[0]).each do |idx12|
            possible_moves << [idx12,start_pos[1]]
        end
        # 5...8 vert
        (start_pos[1]...8).each do |idx21|
            possible_moves << [start_pos[0],idx21] unless idx21 == start_pos[1]
        end
        # 0...5
        (0...start_pos[1]).each do |idx22|
            possible_moves << [start_pos[0],idx22]
        end
        possible_moves.include?(end_pos)
    end

    def bishop_valid_move?(start_pos, end_pos)
        possible_moves = []
        i = 1
        while i < 9
            possible_moves << [(start_pos[0] + i), (start_pos[1] + i)] unless (start_pos[0] + i) > 7 || (start_pos[1] + i) > 7
            possible_moves << [(start_pos[0] - i), (start_pos[1] - i)] unless (start_pos[0] - i) < 0 || (start_pos[1] - i) < 0
            # 7,4 => 6,5 => 5,6 => 4,7 //
            possible_moves << [(start_pos[0] - i), (start_pos[1] + i)] unless (start_pos[0] - i) < 0 || (start_pos[1] + i) > 7
            # 2,7 => 3,6 => 4,5 => 5,4 => 6,3 => 7,2 //
            possible_moves << [(start_pos[0] + i), (start_pos[1] - i)] unless (start_pos[0] + i) > 7 || (start_pos[1] - i) < 0
            i += 1
        end
        possible_moves.include?(end_pos)
    end

    def queen_valid_move?(start_pos, end_pos)
        possible_moves = []
        (start_pos[0]...8).each do |idx11|
            possible_moves << [idx11,start_pos[1]] unless idx11 == start_pos[0]
        end
        (0...start_pos[0]).each do |idx12|
            possible_moves << [idx12,start_pos[1]]
        end
        (start_pos[1]...8).each do |idx21|
            possible_moves << [start_pos[0],idx21] unless idx21 == start_pos[1]
        end
        (0...start_pos[1]).each do |idx22|
            possible_moves << [start_pos[0],idx22]
        end

        i = 1
        while i < 9
            possible_moves << [(start_pos[0] + i), (start_pos[1] + i)] unless (start_pos[0] + i) > 7 || (start_pos[1] + i) > 7
            possible_moves << [(start_pos[0] - i), (start_pos[1] - i)] unless (start_pos[0] - i) < 0 || (start_pos[1] - i) < 0
            # 7,4 => 6,5 => 5,6 => 4,7 //
            possible_moves << [(start_pos[0] - i), (start_pos[1] + i)] unless (start_pos[0] - i) < 0 || (start_pos[1] + i) > 7
            # 2,7 => 3,6 => 4,5 => 5,4 => 6,3 => 7,2 //
            possible_moves << [(start_pos[0] + i), (start_pos[1] - i)] unless (start_pos[0] + i) > 7 || (start_pos[1] - i) < 0
            i += 1
        end
        possible_moves.include?(end_pos)
    end
end

module Stepping
    def knight_valid_move?(start_pos, end_pos)
        possible_moves = []
        (0...8).each do |idx1|
            (0...8).each do |idx2|
                if start_pos[0] + 2 == idx1 || start_pos[0] - 2 == idx1
                    if start_pos[1] + 1 == idx2 || start_pos[1] - 1 == idx2
                        possible_moves << [idx1,idx2]
                    end
                elsif start_pos[0] + 1 == idx1 || start_pos[0] - 1 == idx1
                    if start_pos[1] + 2 == idx2 || start_pos[1] - 2 == idx2
                        possible_moves << [idx1,idx2]
                    end
                end
            end
        end
        possible_moves.include?(end_pos)
    end

    def king_valid_move?(start_pos, end_pos)
        possible_moves = []
        (0...8).each do |idx1|
            (0...8).each do |idx2|
                if start_pos[0] + 1 == idx1 || start_pos[0] - 1 == idx1
                    if start_pos[1] + 1 == idx2 || start_pos[1] - 1 == idx2
                        possible_moves << [idx1,idx2]
                    end
                elsif start_pos[0] + 1 == idx1 || start_pos[0] - 1 == idx1
                    if start_pos[1] == idx2 || start_pos[1] == idx2
                        possible_moves << [idx1,idx2]
                    end
                elsif start_pos[0] == idx1 || start_pos[0] == idx1
                    if start_pos[1] + 1 == idx2 || start_pos[1] + 1 == idx2
                        possible_moves << [idx1,idx2]
                    end
                end
            end
        end
        possible_moves.include?(end_pos)
    end
end