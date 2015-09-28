Rails.application.routes.draw do
  
  root to: "users#welcome"

  get "/sign_in", to: "sessions#new"

  post "/sessions", to: "sessions#create"

  delete "/sessions/destroy", to: "sessions#destroy"

  get "/sign_up", to: "users#new"

  resources :users

end