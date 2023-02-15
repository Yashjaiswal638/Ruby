Rails.application.routes.draw do
  resources :articles#, only: [:show, :index, :new, :create, :edit, :update, :destroy]

  # Defines the root path route ("/")
  # root "articles#index"
end
