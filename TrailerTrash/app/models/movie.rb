class Movie < ActiveRecord::Base
	has_many :actors
	validates :title, uniqueness: true

		def self.identify(query)
		array = query.split
		plus_query = array.join("+")
		@response = HTTParty.get("http://www.omdbapi.com/?t=#{plus_query}&y=&plot=short&r=json").parsed_response
		@title = @response["Title"]
		@year = @response["Year"]
		@poster_url = @response["Poster"]
		@plot = @response["Plot"]
		@actors = @response["Actors"].split(", ")
		@movie = Movie.new(title: @title, year: @year, poster_url: @poster_url, plot: @plot)
		if @movie.save
			@array = [@movie, @actors]
			return @array
		else
			@movie = Movie.find_by(title: @title)
			@array = [@movie, @actors]
			return @array
		end
	end

	def get_actors(input)

		bing_image = Bing.new('CwA+ft8ZpoBuK9UosXuogeJK94M4qsRz3IWxKyeShQg', 1, 'Image')

		@actors_with_photos = input.map do |item|
			bing_result = bing_image.search(item)
			item = {name: item, photo_url: bing_result[0][:Image][0][:MediaUrl]}
		end

		@actors_with_photos.each do |item|
			actors.create(name: item[:name], photo_url: item[:photo_url])
		end
	end

end