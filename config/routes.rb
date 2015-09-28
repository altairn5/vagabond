Rails.application.routes.draw do
  get 'cities/index'

  get 'cities/new'

  get 'cities/create'

  get 'cities/show'

  get 'cities/destroy'

  get 'cities/edit'

  get 'cities/update'

  get "/sign_in", to: "sessions#new"

  post "/sessions", to: "sessions#create"

  delete "/sessions/destroy", to: "sessions#destroy"

  root to: "users#index"

  # get '/sign_up', to "users#new"

  resources :users

end
