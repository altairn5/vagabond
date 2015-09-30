Rails.application.routes.draw do
  
  root to: "users#welcome"

  get "/sign_in", to: "sessions#new"

  post "/sessions", to: "sessions#create"

  get "/sign_out", to: "sessions#destroy"

  get "/sign_up", to: "users#new"

  # get "/city/:city_id/posts/new", to: "posts#new"

  # post "/city/:city_id/posts/", to: "posts#create"

  # get "/city/:city_id/posts/:id", to: "posts#show", as: "city_posts"

  resources :cities do
  	resources :posts
  end

  resources :users

end

