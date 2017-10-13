<<<<<<< HEAD
class Board
    attr_accessor :grid

    def initialize
        @grid = Array.new(9, "")
=======
class grid

        attr_accessor :grid
        def initialize
            @grid = Array.new(9, "")
            
        end
    
    def update(position, marker)
            @grid[position.to_i] = marker
>>>>>>> ca73c1213d5d8ac2625589a2bdeb22578a0db109
    end

    def update(position, marker)
        @grid[position.to_i] = marker
    end
    
    def valid_space?(position)
        if @grid[position] == "X" || @grid[position] == "O"
            false
        else
            true
        end
    end

    def valid_input?(position)
<<<<<<< HEAD
        if position.to_i >= 1 && position.to_i <= 9 && position =~ (/^(\d)+$/) 
            true          
=======
        if position.to_i >= 1 && position.to_i <= 9 && position =~ (/^(\d)+$/)
            true
>>>>>>> ca73c1213d5d8ac2625589a2bdeb22578a0db109
        else
            false
        end
    end

    def full_board?
<<<<<<< HEAD
        grid.count("") == 0        
    end

=======
        grid.count("") == 0       
    end

    def winner?(symbol)
        grid[0] == symbol && grid[1] == symbol && grid[2] == symbol ||
        grid[3] == symbol && grid[4] == symbol && grid[5] == symbol ||
        grid[6] == symbol && grid[7] == symbol && grid[8] == symbol ||
        grid[0] == symbol && grid[3] == symbol && grid[6] == symbol ||
        grid[1] == symbol && grid[4] == symbol && grid[7] == symbol ||
        grid[2] == symbol && grid[5] == symbol && grid[8] == symbol ||
        grid[0] == symbol && grid[4] == symbol && grid[8] == symbol ||
        grid[2] == symbol && grid[4] == symbol && grid[6] == symbol
>>>>>>> ca73c1213d5d8ac2625589a2bdeb22578a0db109

    def winner?(marker)
        grid[0] == marker && grid[1] == marker && grid[2] == marker ||
        grid[3] == marker && grid[4] == marker && grid[5] == marker ||
        grid[6] == marker && grid[7] == marker && grid[8] == marker ||
        grid[0] == marker && grid[3] == marker && grid[6] == marker ||
        grid[1] == marker && grid[4] == marker && grid[7] == marker ||
        grid[2] == marker && grid[5] == marker && grid[8] == marker ||
        grid[0] == marker && grid[4] == marker && grid[8] == marker ||
        grid[2] == marker && grid[4] == marker && grid[6] == marker
    end
end