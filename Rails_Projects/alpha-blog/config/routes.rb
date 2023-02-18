Rails.application.routes.draw do
  resources :articles#, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  
  get 'signup' => 'users#new'
  post 'users' => 'users#create'
  # resources :users, except: [:new]

  # Defines the root path route ("/")
  # root "articles#index"
end
