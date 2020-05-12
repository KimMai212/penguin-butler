Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :butlers do
    resources :bookings, only: :create
  end
  resources :bookings, except: :create
<<<<<<< HEAD
=======

>>>>>>> master
  get "/search", to: "butlers#search"
end
