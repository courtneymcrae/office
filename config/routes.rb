Rails.application.routes.draw do

  get 'secret/public_info'

  get 'secret/secret'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root 'users#index'

  get '/rooms' => 'rooms#index', as: :rooms

  post '/rooms' => 'rooms#create'

  get 'rooms/new' => 'rooms#new', as: :new_room

  get '/rooms/:id/edit' => 'rooms#edit', as: :edit_room

  get '/rooms/:id' => 'rooms#show', as: :room

  patch '/rooms/:id' => 'rooms#update'

  delete '/rooms/:id' => 'rooms#destroy'

  get 'users' => 'users#index'

  get 'users/new' => 'users#new'

  post 'users/' => 'users#create'

  get 'users/:id' => 'users#show', as: :user

  get 'users/:id/edit' => 'users#edit', as: :edit_user

  patch 'users/:id' => 'users#update'

  delete 'users/:id' => 'users#destroy'

  resources :users, only: [:new, :index, :create]

  resources :users, only: [:new, :index, :create]

  get 'login', to: 'sessions#new'

  delete "logout", to: "sessions#destroy"

  resources :sessions, only: [ :create]

  resources :photos

  resources :rooms do 
    resources :reservation, only: [:create]
  end 
end 
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
