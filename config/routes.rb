Rails.application.routes.draw do
  root to: "rockets#home"
  sources :rockets, only: [:show]
  # get "rockets/:id", to "rockets#show"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
