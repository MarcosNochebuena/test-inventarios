Rails.application.routes.draw do
  resources :vehicles
  resources :dealerships
  resources :sales
  devise_for :users, controllers: {
    registrations: "users/registrations"
  } 
  post "/purchase/:vehicle_id", to: 'sales#purchase', as: 'purchase_vehicle'
  #get 'dashboard/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dashboard#index"
end
