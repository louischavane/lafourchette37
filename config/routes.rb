Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :restaurants


  # creer un restaurant
  # get 'restaurants/new', to: "restaurants#new"
  # post 'restaurants/create', to: "restaurants#create"


  # lire tous les restaurants
  # get 'restaurants', to: "restaurants#index"

  # lire un restaurant
  # get 'restaurants/:id', to: "restaurants#show"


  # updater un restaurant
  # get 'restaurants/:id/edit', to: "restaurants#edit"
  # patch 'restaurants/:id', to: "restaurants#update"

  # supprimer un restaurant
  # delete 'restaurants/:id', to: "restaurants#destroy"


end
