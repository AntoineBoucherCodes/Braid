Rails.application.routes.draw do
  get 'order_items/create'
  get 'order_items/update'
  get 'order_items/destroy'
  devise_for :users
  root to: 'pages#home'

  resources :stores do
    resources :products, only: [:new, :create, :delete]
  end
  resources :products, except: [:new, :create, :delete]

  get 'dashboard', to: 'dashboard#dashboard', as: 'dashboard'

  resources :lobby, only: [:show, :create, :destroy]
end
