Rails.application.routes.draw do
  # get "rockets/:id", to "rockets#show"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "rockets#index"
  # get "rockets/:id", to "rockets#show"

  resources :rockets do
    resources :books, only: [:create]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/myposts", to: "rockets#myposts"
  get "/create", to: "rockets#new"
  get "/mybookings", to: "rockets#bookings"
  # Defines the root path route ("/")
  # root "articles#index"
end
