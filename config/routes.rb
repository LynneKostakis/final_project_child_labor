Rails.application.routes.draw do
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
