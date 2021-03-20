Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :stores

  get 'dashboard', to: 'dashboard#dashboard', as: 'dashboard'
end
