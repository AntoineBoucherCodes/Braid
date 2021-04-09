Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :order_items
  resources :carts

  resources :stores do
    resources :products, only: [:new, :create, :delete]
  end
  resources :products, except: [:new, :create, :delete]

  get "dashboard", to: "dashboard#dashboard", as: "dashboard"

  resources :lobbies do
    resources :lobby_participants
  end

  patch "lobbies/:id/accept", to: "dashboard#accept", as: "lobby_accept"
  patch "lobbies/:id/decline", to: "dashboard#decline", as: "lobby_decline"

  get "pets", to: "categories#categories_index", as:"pets"
  get "home", to: "categories#categories_index", as:"home"
  get "wellness", to: "categories#categories_index", as:"wellness"
  get "clothing", to: "categories#categories_index", as:"clothing"
  get "food", to: "categories#categories_index", as:"food"
  get "beauty", to: "categories#categories_index", as:"beauty"
  get "jewelry", to: "categories#categories_index", as:"jewelry"
  get "kids", to: "categories#categories_index", as:"kids"
  get "art", to: "categories#categories_index", as:"art"
  get "tech", to: "categories#categories_index", as:"tech"
end
