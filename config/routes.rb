Rails.application.routes.draw do
  get "categories/show"
  get "categories/index"
  get "categories/edit"
  get "categories/new"
  get "categories/create"
  get "categories/update"
  get "categories/destroy"
  get "customers/show"
  get "customers/index"
  get "customers/edit"
  get "customers/new"
  get "customers/create"
  get "customers/update"
  get "customers/destroy"
  get "orders/show"
  get "orders/index"
  get "orders/edit"
  get "orders/new"
  get "orders/create"
  get "orders/update"
  get "orders/destroy"
  get "products/show"
  get "products/index"
  get "products/edit"
  get "products/new"
  get "products/create"
  get "products/update"
  get "products/destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
