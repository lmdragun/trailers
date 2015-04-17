class Actor < ActiveRecord::Base
	belongs_to :movie
	validates_uniqueness_of :name, :scope => [:movie_id]

end