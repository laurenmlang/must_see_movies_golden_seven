class MoviesController < ApplicationController

	def show
		@d_list = Director.all
		
	end
end