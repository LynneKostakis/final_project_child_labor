Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root :to => "kids#index"
  # Routes for the Assignment resource:
  # CREATE
  get "/assignments/new", :controller => "assignments", :action => "new"
  post "/create_assignment", :controller => "assignments", :action => "create"

  # READ
  get "/assignments", :controller => "assignments", :action => "index"
  get "/assignments/:id", :controller => "assignments", :action => "show"

  # UPDATE
  get "/assignments/:id/edit", :controller => "assignments", :action => "edit"
  post "/update_assignment/:id", :controller => "assignments", :action => "update"

  # DELETE
  get "/delete_assignment/:id", :controller => "assignments", :action => "destroy"
  #------------------------------

  # Routes for the Chore_category resource:
  # CREATE
  get "/chore_categories/new", :controller => "chore_categories", :action => "new"
  post "/create_chore_category", :controller => "chore_categories", :action => "create"

  # READ
  get "/chore_categories", :controller => "chore_categories", :action => "index"
  get "/chore_categories/:id", :controller => "chore_categories", :action => "show"

  # UPDATE
  get "/chore_categories/:id/edit", :controller => "chore_categories", :action => "edit"
  post "/update_chore_category/:id", :controller => "chore_categories", :action => "update"

  # DELETE
  get "/delete_chore_category/:id", :controller => "chore_categories", :action => "destroy"
  #------------------------------

  # Routes for the Chore resource:
  # CREATE
  get "/chores/new", :controller => "chores", :action => "new"
  post "/create_chore", :controller => "chores", :action => "create"

  # READ
  get "/chores", :controller => "chores", :action => "index"
  get "/chores/:id", :controller => "chores", :action => "show"

  # UPDATE
  get "/chores/:id/edit", :controller => "chores", :action => "edit"
  post "/update_chore/:id", :controller => "chores", :action => "update"

  # DELETE
  get "/delete_chore/:id", :controller => "chores", :action => "destroy"
  #------------------------------

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
