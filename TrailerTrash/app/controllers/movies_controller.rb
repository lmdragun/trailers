class MoviesController < ApplicationController

	def index
		query = params[:query]
		array = query.split
		plus_query = array.join("+")
		@response = HTTParty.get("http://www.omdbapi.com/?t=#{plus_query}&y=&plot=short&r=json").parsed_response.inspect

		binding.pry
	end

	def show

	end


end