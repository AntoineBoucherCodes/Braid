Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :stores do
     resources :prodcuts
  end
end
