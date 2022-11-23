Rails.application.routes.draw do
  # get "rockets/:id", to "rockets#show"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "rockets#index"
  # get "rockets/:id", to "rockets#show"

  resources :rockets, only: [:index, :show, :new, :update, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/rocket", to: "rockets#edit", as: "update"
  delete "/rocket", to: "rockets#destroy", as: "delete"
  get "/myposts", to: "rockets#myposts"
  # Defines the root path route ("/")
  # root "articles#index"
end
