Rails.application.routes.draw do
  get "/sign_in", to: "sessions#new"

  post "/sessions", to: "sessions#create"

  delete "/sessions/destroy", to: "sessions#destroy"

  root to: "users#index"

  # get '/sign_up', to "users#new"

  resources :users

end
