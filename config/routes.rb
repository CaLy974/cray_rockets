Rails.application.routes.draw do
  root to: "rockets#home"
  # get "rockets/:id", to "rockets#show"
  devise_for :users
<<<<<<< HEAD

  resources :rockets, only: [:index, :show]

=======
  root to: "rockets#index"
  resources :rockets, only: [:index]
>>>>>>> a61a94ccb4fd23beb7b248ae40b8dbcd359461fe
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
