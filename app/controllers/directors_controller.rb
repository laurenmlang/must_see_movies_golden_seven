class DirectorsController < ApplicationController

	def index
		@d_list = Director.all
	end

	def show
		@director = Director.find(params[:id])
	end

	def new
	end

	def create
   		 @director = Director.new
   		 @director.name = params[:the_name]
   		 @director.bio = params[:the_bio]
    	 @director.dob = params[:the_dob]
    	 @director.image_url = params[:the_image_url]
    	 @director.save
    	 render("show")
	end

	def edit
		 @director = Director.find(params[:id])
	end

	def update
		 @director = Director.find(params[:id])
   		 @director.name = params[:the_name]
   		 @director.bio = params[:the_bio]
    	 @director.dob = params[:the_dob]
    	 @director.image_url = params[:the_image_url]
   		 @director.save
   		 render("show")
	end

	def delete
		@director = Director.find(params[:id])
		@director.destroy
	end

end