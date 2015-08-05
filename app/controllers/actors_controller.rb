class ActorsController < ApplicationController

	def index
		@a_list = Actor.all
	end

	def show
		@id = params["id"]
		@actor = Actor.find_by(@id)

	end
end