Rails.application.routes.draw do

  get 'cities/index'

  get 'cities/new'

  get 'cities/create'

  get 'cities/show'

  get 'cities/destroy'

  get 'cities/edit'

  get 'cities/update'
  
  root to: "users#welcome"

  get "/sign_in", to: "sessions#new"

  post "/sessions", to: "sessions#create"

  get "/sign_out", to: "sessions#destroy"

  get "/sign_up", to: "users#new"

  resources :users

end
