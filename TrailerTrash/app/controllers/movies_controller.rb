class MoviesController < ApplicationController

	def index

		cl = Colourlovers::Client.new
		@color = cl.random_color["hex"]

		if params[:query]
			query = params[:query]
			@array = Movie.identify(query)
			@movie = @array[0]
			@actors = @array[1]

			@movie.get_actors(@actors)
		end

	end

	def show
		cl = Colourlovers::Client.new
		@color = cl.random_color["hex"]
		
		@movie = Movie.find(params[:id])

		@thing = YoutubeSearch.search('#{@movie.title} trailer').first
		@wholeurl = @thing["id"]
		@id = @wholeurl.slice(41..60)
	end

end
