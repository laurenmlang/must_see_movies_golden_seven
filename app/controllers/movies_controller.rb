class MoviesController < ApplicationController

	def index
		@m_list = Movie.all
	end

	def show
		@id = params["id"]
		@movie = Movie.find_by(@id)
	end

	def new
	end

	def create
   		 @movie = Movie.new
   		 @movie.title = params[:the_title]
   		 @movie.year = params[:the_year]
    	 @movie.duration = params[:the_duration]
    	 @movie.description = params[:the_description]
    	 @movie.image_url = params[:the_image_url]
    	 @movie.save
    	 render("show")
	end

	def edit
		 @movie = Movie.find(params[:id])
	end

	def update
		 @movie = Movie.find(params[:id])
   		 @movie.title = params[:the_title]
  		 @movie.year = params[:the_year]
  	     @movie.duration = params[:the_duration]
  	     @movie.description = params[:the_description]
   	     @movie.image_url = params[:the_image_url]
   	     @movie.save
   		 render("show")
	end

	def delete
		@movie = Movie.find(params[:id])
		@movie.destroy
	end


end