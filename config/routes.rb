Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :stores do
     resources :products, except: [:index]
  end
  resources :products, only: [:index]
end
