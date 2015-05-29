class Movie < ActiveRecord::Base
	def self.set_movies
		s = Imdb::Search.new("love")
    	s.movies.sample(5)
	end

end
