class Movie < ActiveRecord::Base
	def self.set_movies
		s = Imdb::Search.new("love")
    	@movies = s.movies.sample(5)
    	@right_movie = @movies.sample
	end

end
