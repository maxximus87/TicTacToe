class Board < Array
  attr_reader :board

  def initialize(board)
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end
end