class MoviesController < ApplicationController

	def index
		if params[:query]
			query = params[:query]
			@array = Movie.find(query)
			@movie = @array[0]
			@actors = @array[1]

			@movie.get_actors(@actors)
			
		end
	end

	def show
		@movie = Movie.find(params[:id])

	end


end