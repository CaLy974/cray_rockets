Rails.application.routes.draw do
<<<<<<< HEAD
  root to: "rockets#home"
  sources :rockets, only: [:show]
  # get "rockets/:id", to "rockets#show"

=======
  devise_for :users
  root to: "pages#home"
  resources :rockets, only: [:index]
>>>>>>> origin
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
