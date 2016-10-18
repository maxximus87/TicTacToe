require "minitest/autorun"
require_relative "app.rb"

class TestTicTacToe <Minitest::Test
	
	def test_board_array
		board = Board.new()
		assert_equal(["1", "2", "3", "4", "5", "6", "7", "8", "9"], board.board)
	end
end
