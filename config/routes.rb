Rails.application.routes.draw do
  
  root to: "users#welcome"

  get "/sign_in", to: "sessions#new"

  post "/sessions", to: "sessions#create"

  get "/sign_out", to: "sessions#destroy"

  get "/sign_up", to: "users#new"

  post '/comments', to: "comments#create"

  resources :cities do
  	resources :posts
  end

  resources :users

end

