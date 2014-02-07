require 'test_helper'

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "new Game has 100 Square(s)" do
  	game = Game.create
  	game.add_squares
  	assert_equal(100, game.squares.size)
  end
end
