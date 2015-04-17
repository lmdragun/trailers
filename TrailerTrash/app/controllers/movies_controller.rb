class MoviesController < ApplicationController

	def index
		cl = Colourlovers::Client.new
		@color = cl.random_color["hex"]
	end

	def show
	end

end
