Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # User stories:
  # A visitor can see the list of all restaurants.
  get "restaurants", to: "restaurants#index"

  # A visitor can see the details of a restaurant, with all the reviews related to that restaurant
  get "restaurants/:id", to: "restaurants#show", as: :restaurant
end
