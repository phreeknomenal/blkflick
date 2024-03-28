Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "dashboard#index"

  resources :dashboard
  resources :directors
  resources :movies
  resources :persons
  resources :stars

end
