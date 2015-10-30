Rails.application.routes.draw do

  get("/", { :controller => "golden", :action => "home" })

  get("/directors", {:controller => "golden", :action => "director_index"})
  get("/directors/:id",       { :controller => "golden", :action => "director_show" })
end
