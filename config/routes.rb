Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

# get "restaurants", to: "restaurants#index", as: :restaurants
# # Create
# get "restaurants/new", to: "restaurants#new",  as: :new_restaurant
# post   "restaurants", to: "restaurants#create"
# # Read one - The `show` route needs to be *after* `new` route.
# get    "restaurants/:id", to: "restaurants#show", as: :restaurant
# # Update
# get    "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
# patch  "restaurants/:id", to: "restaurants#update"

# reviews
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end
