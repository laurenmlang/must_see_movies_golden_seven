Rails.application.routes.draw do
  
# Route to DIRECTORS

  get("/directors", {:controller =>"directors", :action => "show"})

  get("/directors/:id", {:controller =>"directors", :action => "detail"})

end