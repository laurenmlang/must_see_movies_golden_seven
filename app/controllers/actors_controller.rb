class ActorsController < ApplicationController

	def show
		@a_list = Actor.all
	end

	def detail
		@id = params["id"]
		@actor = Actor.find_by(@id)

	end
end