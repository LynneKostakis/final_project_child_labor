Rails.application.routes.draw do
  # Routes for the Family resource:
  # CREATE
  get "/families/new", :controller => "families", :action => "new"
  post "/create_family", :controller => "families", :action => "create"

  # READ
  get "/families", :controller => "families", :action => "index"
  get "/families/:id", :controller => "families", :action => "show"

  # UPDATE
  get "/families/:id/edit", :controller => "families", :action => "edit"
  post "/update_family/:id", :controller => "families", :action => "update"

  # DELETE
  get "/delete_family/:id", :controller => "families", :action => "destroy"
  #------------------------------

  # Routes for the Parent resource:
  # CREATE
  get "/parents/new", :controller => "parents", :action => "new"
  post "/create_parent", :controller => "parents", :action => "create"

  # READ
  get "/parents", :controller => "parents", :action => "index"
  get "/parents/:id", :controller => "parents", :action => "show"

  # UPDATE
  get "/parents/:id/edit", :controller => "parents", :action => "edit"
  post "/update_parent/:id", :controller => "parents", :action => "update"

  # DELETE
  get "/delete_parent/:id", :controller => "parents", :action => "destroy"
  #------------------------------

  # Routes for the Kid resource:
  # CREATE
  get "/kids/new", :controller => "kids", :action => "new"
  post "/create_kid", :controller => "kids", :action => "create"

  # READ
  get "/kids", :controller => "kids", :action => "index"
  get "/kids/:id", :controller => "kids", :action => "show"

  # UPDATE
  get "/kids/:id/edit", :controller => "kids", :action => "edit"
  post "/update_kid/:id", :controller => "kids", :action => "update"

  # DELETE
  get "/delete_kid/:id", :controller => "kids", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
