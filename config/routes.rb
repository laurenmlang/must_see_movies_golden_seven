Rails.application.routes.draw do
  
# Route to DIRECTORS

  get("/directors", {:controller =>"directors", :action => "index"})
  get("/directors/:id", {:controller =>"directors", :action => "show"})

# Create MOVIES
  get('/movies/new', { :controller => 'movies', :action => 'new' })
  get('/create_movie', { :controller => 'movies', :action => 'create' })

# Route to MOVIES
	
  get("/movies", {:controller =>"movies", :action => "index"})
  get("/movies/:id", {:controller =>"movies", :action => "show"})

# Update MOVIES
  get('/movies/:id/edit', { :controller => 'movies', :action => 'edit' })
  get('/update_movie/:id', { :controller => 'movies', :action => 'update' })

# Delete MOVIES
 get('/delete_movie/:id', { :controller => 'movies', :action => 'delete' })

# Route to ACTORS

  get("/actors", {:controller =>"actors", :action => "index"})
  get("/actors/:id", {:controller =>"actors", :action => "show"})

end