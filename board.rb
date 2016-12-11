class grid

        attr_accessor :grid
        def initialize
            @grid = Array.new(9, "")
            
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
        if position.to_i >= 1 && position.to_i <= 9 && position =~ (/^(\d)+$/)
            true
        else
            false
        end
    end    

    def full_board?
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

    end
end