class Game < ActiveRecord::Base
	has_many :squares
	attr_reader :home_picks
	attr_reader :away_picks

	def add_squares
    	for home in (0..9)
    		for away in (0..9)
    			self.squares.create(home_index: home, away_index: away)
    		end
    	end
	end

	def generate_headers
		@home_picks = Array.new
		@home_picks.push(1, 2, 3, 4, 5, 6, 7, 8, 9, 0)

		@away_picks = Array.new
		@away_picks.push(1, 2, 3, 4, 5, 6, 7, 8, 9, 0).reverse!
	end
end
