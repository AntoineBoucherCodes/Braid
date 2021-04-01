Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :order_items
  resources :carts
  
  resources :stores do
    resources :products, only: [:new, :create, :delete]
  end
  resources :products, except: [:new, :create, :delete]

  get 'dashboard', to: 'dashboard#dashboard', as: 'dashboard'

  resources :lobby, only: [:show, :create, :destroy]
end
