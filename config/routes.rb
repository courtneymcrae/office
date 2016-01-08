Rails.application.routes.draw do

  # get 'pages/home'

  # get 'secret/public_info'

  # get 'secret/secret'

  # get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/destroy'

  root 'users#index'

  get '/rooms' => 'rooms#index', as: :rooms

  post '/rooms' => 'rooms#create'

  get 'rooms/new' => 'rooms#new', as: :new_room

  get '/rooms/:id/edit' => 'rooms#edit', as: :edit_room

  get '/rooms/:id' => 'rooms#show', as: :room

  patch '/rooms/:id' => 'rooms#update'

  delete '/rooms/:id' => 'rooms#destroy'

  get 'users' => 'users#index'

  get 'users/new' => 'users#new', as: :new_user

  post 'users/' => 'users#create'

  get 'users/:id' => 'users#show', as: :user

  get 'users/:id/edit' => 'users#edit', as: :edit_user

  patch 'users/:id' => 'users#update'

  delete 'users/:id' => 'users#destroy'

  resources :users, only: [:new, :index, :create]

  resources :users, only: [:new, :index, :create]

  get 'login', to: 'sessions#new', as: :new_session

  get "logout", to: "sessions#destroy", as: :destroy_session

  resources :sessions, only: [ :create]

  resources :photos

  resources :rooms do 
    resources :reservations
  end 
end 
 
