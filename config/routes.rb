Rails.application.routes.draw do
  root "dashboard#index"
  
  get '/auth/github', :as => :github_login
  
  get '/auth/github/callback', to: "sessions#create"
  
  delete '/logout', to: "sessions#destroy"
  
  get '/repositories', to: "repositories#index"
  get '/organizations', to: "organizations#index"
  get '/recent_activities', to: "recent_activities#index"
end
