class DirectorsController < ApplicationController

	def index
		@d_list = Director.all
	end

	def show
		@id = params[:id]
		@director = Director.find_by(@id)

	end
end