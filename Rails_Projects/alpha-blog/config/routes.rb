Rails.application.routes.draw do
  root "pages#home"

  resources :articles#, only: [:show, :index, :new, :create, :edit, :update, :destroy]

  get 'signup' => 'users#new'
  # post 'users' => 'users#create'
  resources :users, except: [:new]

  # Defines the root path route ("/")
end
