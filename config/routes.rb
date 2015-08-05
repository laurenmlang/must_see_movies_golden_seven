Rails.application.routes.draw do

# DIRECTORS:  
# Create DIRECTORS
  get('/directors/new', { :controller => 'directors', :action => 'new' })
  get('/create_director', { :controller => 'directors', :action => 'create' })

# Route to DIRECTORS

  get("/directors", {:controller =>"directors", :action => "index"})
  get("/directors/:id", {:controller =>"directors", :action => "show"})

# Update DIRECTORS
  get('/directors/:id/edit', { :controller => 'directors', :action => 'edit' })
  get('/update_director/:id', { :controller => 'directors', :action => 'update' })

# Delete DIRECTORS
 get('/delete_director/:id', { :controller => 'directors', :action => 'delete' })


# MOVIES:
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


# ACTORS:  
# Create ACTORS
  get('/actors/new', { :controller => 'actors', :action => 'new' })
  get('/create_actor', { :controller => 'actors', :action => 'create' })

# Route to ACTORS

  get("/actors", {:controller =>"actors", :action => "index"})
  get("/actors/:id", {:controller =>"actors", :action => "show"})

# Update ACTORS
  get('/actors/:id/edit', { :controller => 'actors', :action => 'edit' })
  get('/update_actor/:id', { :controller => 'actors', :action => 'update' })

# Delete ACTORS
 get('/delete_actor/:id', { :controller => 'actors', :action => 'delete' })

end