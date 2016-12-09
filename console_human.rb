class Console_human
    attr_reader :marker

    def initialize(marker)
        @marker = marker
    end

    def get_move(board)
        puts "Please make a move(1-9): "
        move = gets.chomp.to_i
        move = move - 1
            if board[move] == "" && move >= 0
                move
            else
                puts "Please try again."
                get_move(board)
            end
    end    

end