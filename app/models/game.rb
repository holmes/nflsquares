class Game < ActiveRecord::Base
	has_many :squares

	def add_squares
    	for home in (0..9)
    		for away in (0..9)
    			self.squares.create(home_index: home, away_index: away)
    		end
    	end
	end

end
