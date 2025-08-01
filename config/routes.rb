Rails.application.routes.draw do
  get "order_items/create"
  get "order_items/index"
  get "order_items/show"
  get "order_items/destroy"
  get "order_items/edit"
  get "order_items/new"
  get "order_items/update"
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get "users/index"
  get "users/create"
  get "users/show"
  get "users/destroy"
  get "users/update"
  get "users/edit"
  get "users/new"

  resources :orders
  resources :products
  resources :customers
  resources :categories
  resources :users, only: [:create, :destroy, :index, :show]
  resources :order_items

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
