class DirectorsController < ApplicationController

	def show
		@d_list = Director.all
	end

	def detail
		@id = params[:id]
		@director = Director.find_by(@id)

	end
end