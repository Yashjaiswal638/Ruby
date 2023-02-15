Rails.application.routes.draw do
  resources :articles, only: [:show, :index]

  # Defines the root path route ("/")
  # root "articles#index"
end
