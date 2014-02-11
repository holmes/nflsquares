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

  test "generate headers produces 10 of them" do
  	game = Game.create
  	game.generate_headers
  	assert_equal(10, game.home_picks.size)
  	assert_equal(10, game.away_picks.size)
  	assert_not_equal game.home_picks[0], game.away_picks[0]
  end
end
