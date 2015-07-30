Rails.application.routes.draw do
  
# Route to DIRECTORS

  get("/directors", {:controller =>"movies", :action => "show"})



end