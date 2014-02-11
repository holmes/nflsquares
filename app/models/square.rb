class Square < ActiveRecord::Base
	has_one :player
	belongs_to :game
	# home_index:integer
	# away_index:integer

	def pick(player)
		@player = player
	end

	def available
		return @player == nil
	end
end
