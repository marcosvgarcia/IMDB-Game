class Player < ActiveRecord::Base

	@@record_player = nil
	@@record = 0


	def update_record
		if self.points > self.max_points
			self.max_points = self.points
		end
		if self.points > @@record
			@@record = self.points
			@@record_player = self.name
		end
	end

	def record
    	@@record
  	end

	def points_up
		self.points += 1
		@player.save
	end

	def game_over
		self.points = 0
		@player.save
	end
end
