class MoviesController < ApplicationController

	def index
		cl = Colourlovers::Client.new
		@color = cl.random_color["hex"]
		
		query = params[:query]

	end

	def show

	end


end
