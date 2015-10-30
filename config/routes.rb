Rails.application.routes.draw do

  get("/", { :controller => "golden", :action => "home" })

  # Routes to CREATE
  get("/directors/new_form", {:controller => "golden", :action => "director_new_form"})
  get("/directors/create_new", {:controller => "golden", :action => "director_create_new"})

  # Routes to READ
  get("/directors", {:controller => "golden", :action => "director_index"})
  get("/directors/:id",       { :controller => "golden", :action => "director_show" })


  # Routes to DELETE
  get("/director_delete/:id", { :controller => "golden", :action => "director_delete" })

  # Routes to EDIT
  get("/directors/:id/edit", { :controller => "golden", :action => "director_edit_form" })
  get("/directors/update_director/:id", { :controller => "golden", :action => "update_director" })

end
