class Console_human
<<<<<<< HEAD
    attr_accessor :marker
=======
    attr_reader :marker
>>>>>>> ca73c1213d5d8ac2625589a2bdeb22578a0db109

    def initialize(marker)
        @marker = marker
    end

    def get_move(board)
<<<<<<< HEAD
        puts "Make a move (1-9):"
=======
        puts "Please make a move(1-9): "
>>>>>>> ca73c1213d5d8ac2625589a2bdeb22578a0db109
        move = gets.chomp.to_i
        move = move - 1
            if board[move] == "" && move >= 0
                move
            else
<<<<<<< HEAD
                puts "Wrong move, please select an empty space!"
=======
                puts "Please try again."
>>>>>>> ca73c1213d5d8ac2625589a2bdeb22578a0db109
                get_move(board)
            end
    end
end

