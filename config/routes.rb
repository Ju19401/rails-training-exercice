Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'dashboard', to: 'dashboard#index'

  resources :rents, only: [ :index, :show, :new, :create, :destroy, :myprofile ] do
    resources :bookings, only: [ :new, :create ]
  end
end
