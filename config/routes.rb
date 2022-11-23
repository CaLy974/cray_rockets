Rails.application.routes.draw do
  # get "rockets/:id", to "rockets#show"
  devise_for :users
  resources :rockets, only: [:index, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  root to: "rockets#index"
end
