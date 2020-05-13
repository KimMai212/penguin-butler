Rails.application.routes.draw do
  devise_for :users
  #root to: 'pages#home'
  unauthenticated do
    root to: 'pages#home'
  end
  
  # authenticated do
  #   root to: 'dashboard#index'
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :butlers do
    resources :bookings, only: :create
  end
  resources :bookings, except: :create

  get "/search", to: "butlers#search"
  get "/dashboard", to: "dashboard#index"
end
