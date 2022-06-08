Rails.application.routes.draw do
  root 'places#index'
  get "/logout", :controller => "sessions", :action => "destroy"
  get "/login", :controller => "sessions", :action => "new"

  resources "places"
  resources "posts"
  resources "sessions"
  resources "users"


end
