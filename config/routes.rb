Rails.application.routes.draw do
  
  root to: "users#welcome"

  get "/sign_in", to: "sessions#new"

  post "/sessions", to: "sessions#create"

  get "/sign_out", to: "sessions#destroy"

  get "/sign_up", to: "users#new"

  resources :cities do
  	resources :posts
  end

  resources :users do
	resources :posts ,only: :show
  end

end

