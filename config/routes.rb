Rails.application.routes.draw do

  devise_for :users

  #unauthenticated do
 #   root to: 'users#sign_in'
 # end
 # authenticated do
 #   root to: 'pages#home'
#  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :butlers do
    resources :bookings, only: :create
  end
  resources :bookings, except: :create

  get "/search", to: "butlers#search"
  get "/dashboard", to: "dashboards#index"
  root to: 'pages#home'
end
