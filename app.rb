class Board < Array
  attr_reader :board

  def initialize
    @board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
  end

  def print_board
    print "\n"
    @board.each_slice(3) { |x| puts x.join }
    print "\n"
  end
end

game_board = Board.new
game_board.print_board