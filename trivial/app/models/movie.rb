class Movie < ActiveRecord::Base
	def self.set_movies text
		s = Imdb::Search.new(text)
    	s.movies.sample(5)
	end

end
