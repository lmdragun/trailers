class MoviesController < ApplicationController

	def index

		cl = Colourlovers::Client.new
		@color = cl.random_color["hex"]

		if params[:query]
			query = params[:query]
			array = query.split
			plus_query = array.join("+")
			@response = HTTParty.get("http://www.omdbapi.com/?t=#{plus_query}&y=&plot=short&r=json").parsed_response
			@title = @response["Title"]
			@year = @response["Year"]
			@poster_url = @response["Poster"]
			@plot = @response["Plot"]
			@movie = Movie.new(title: @title, year: @year, poster_url: @poster_url, plot: @plot)
			if @movie.save
				@movie
			else
				@movie = Movie.find_by(title: @title)
			end
		end

	end

	def show
		cl = Colourlovers::Client.new
		@color = cl.random_color["hex"]

		@movie = Movie.find(params[:id])
		@actors = @movie.actors.all
	end

end
