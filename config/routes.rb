Rails.application.routes.draw do
  
# Route to DIRECTORS

  get("/directors", {:controller =>"directors", :action => "show"})
  get("/directors/:id", {:controller =>"directors", :action => "detail"})

# Route to MOVIES

  get("/movies", {:controller =>"movies", :action => "show"})
  get("/movies/:id", {:controller =>"movies", :action => "detail"})

# Route to ACTORS

  get("/actors", {:controller =>"actors", :action => "show"})
  get("/actors/:id", {:controller =>"actors", :action => "detail"})

end