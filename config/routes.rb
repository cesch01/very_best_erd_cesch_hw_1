Rails.application.routes.draw do
  # Routes for the Cuisine_type resource:
  # CREATE
  get "/cuisine_types/new", :controller => "cuisine_types", :action => "new"
  post "/create_cuisine_type", :controller => "cuisine_types", :action => "create"

  # READ
  get "/cuisine_types", :controller => "cuisine_types", :action => "index"
  get "/cuisine_types/:id", :controller => "cuisine_types", :action => "show"

  # UPDATE
  get "/cuisine_types/:id/edit", :controller => "cuisine_types", :action => "edit"
  post "/update_cuisine_type/:id", :controller => "cuisine_types", :action => "update"

  # DELETE
  get "/delete_cuisine_type/:id", :controller => "cuisine_types", :action => "destroy"
  #------------------------------

  # Routes for the Bookmark resource:
  # CREATE
  get "/bookmarks/new", :controller => "bookmarks", :action => "new"
  post "/create_bookmark", :controller => "bookmarks", :action => "create"

  # READ
  get "/bookmarks", :controller => "bookmarks", :action => "index"
  get "/bookmarks/:id", :controller => "bookmarks", :action => "show"

  # UPDATE
  get "/bookmarks/:id/edit", :controller => "bookmarks", :action => "edit"
  post "/update_bookmark/:id", :controller => "bookmarks", :action => "update"

  # DELETE
  get "/delete_bookmark/:id", :controller => "bookmarks", :action => "destroy"
  #------------------------------

  # Routes for the Venue_address resource:
  # CREATE
  get "/venue_addresses/new", :controller => "venue_addresses", :action => "new"
  post "/create_venue_address", :controller => "venue_addresses", :action => "create"

  # READ
  get "/venue_addresses", :controller => "venue_addresses", :action => "index"
  get "/venue_addresses/:id", :controller => "venue_addresses", :action => "show"

  # UPDATE
  get "/venue_addresses/:id/edit", :controller => "venue_addresses", :action => "edit"
  post "/update_venue_address/:id", :controller => "venue_addresses", :action => "update"

  # DELETE
  get "/delete_venue_address/:id", :controller => "venue_addresses", :action => "destroy"
  #------------------------------

  # Routes for the Venue resource:
  # CREATE
  get "/venues/new", :controller => "venues", :action => "new"
  post "/create_venue", :controller => "venues", :action => "create"

  # READ
  get "/venues", :controller => "venues", :action => "index"
  get "/venues/:id", :controller => "venues", :action => "show"

  # UPDATE
  get "/venues/:id/edit", :controller => "venues", :action => "edit"
  post "/update_venue/:id", :controller => "venues", :action => "update"

  # DELETE
  get "/delete_venue/:id", :controller => "venues", :action => "destroy"
  #------------------------------

  # Routes for the Dish resource:
  # CREATE
  get "/dishes/new", :controller => "dishes", :action => "new"
  post "/create_dish", :controller => "dishes", :action => "create"

  # READ
  get "/dishes", :controller => "dishes", :action => "index"
  get "/dishes/:id", :controller => "dishes", :action => "show"

  # UPDATE
  get "/dishes/:id/edit", :controller => "dishes", :action => "edit"
  post "/update_dish/:id", :controller => "dishes", :action => "update"

  # DELETE
  get "/delete_dish/:id", :controller => "dishes", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
