class MoviesController < ApplicationController

	def show
		@m_list = Movie.all
	end

	def detail
		@id = params["id"]
		@movie = Movie.find_by(@id)
	end
end