class Square < ActiveRecord::Base
	has_one :player
	belongs_to :game
	# home_digit:integer
	# away_digit:integer
	# home_index:integer
	# away_index:integer

end
