require_relative "Knight"
require_relative "Rook"
require_relative "Bishop"
require_relative "King"
require_relative "Queen"
require_relative "Pawn"

class Piece
    attr_reader :location

    def initialize(location = nil)
        @location = location

    end
    
end

class NullPiece < Piece

    
end

class Sliding < Piece

    def initialize(location)
        super
    end
    
end

class Stepping < Piece

    def initialize(location)
        super
    end
    
end

class Pawn < Piece

    def initialize(location)
        super
    end
    
end
