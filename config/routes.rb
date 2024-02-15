Rails.application.routes.draw do
  devise_for :users
  root "managers#index"

  resources :houses

  resources :rooms do
    member do
      post :add_bed
    end
  end

  resources :beds do
    member do
      put :remove_occupant
      put :assign_resident
    end
  end

  resources :users

  resources :managers

  resources :residents
  # get 'beds/index'
  # get 'rooms/index'
  # get 'houses/index'
  
  # root "articles#index"
  # get "/articles", to: "articles#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
