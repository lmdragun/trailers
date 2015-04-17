class Movie < ActiveRecord::Base
	has_many :actors
	validates :title, uniqueness: true

end