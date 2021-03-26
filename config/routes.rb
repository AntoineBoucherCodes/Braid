Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :stores do
    resources :products, only: [:new, :create, :delete]
  end
  resources :products, except: [:new, :create, :delete]
end
