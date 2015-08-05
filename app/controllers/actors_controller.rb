class ActorsController < ApplicationController

	def index
		@a_list = Actor.all
	end

	def show
		@actor = Actor.find(params[:id])
	end

	def new
	end

	def create
   		 @actor = Actor.new
   		 @actor.name = params[:the_name]
   		 @actor.bio = params[:the_bio]
    	 @actor.dob = params[:the_dob]
    	 @actor.image_url = params[:the_image_url]
    	 @actor.save
    	 render("show")
	end

	def edit
		 @actor = Actor.find(params[:id])
	end

	def update
		 @actor = Actor.find(params[:id])
   		 @actor.name = params[:the_name]
   		 @actor.bio = params[:the_bio]
    	 @actor.dob = params[:the_dob]
    	 @actor.image_url = params[:the_image_url]
   		 @actor.save
   		 render("show")
	end

	def delete
		@actor = Actor.find(params[:id])
		@actor.destroy
	end

end