Rails.application.routes.draw do
  get 'static_pages/home'

  resources :rates
  resources :reviews
  resources :categories
  resources :conversations
  resources :products
  resources :order_items
  resources :messages
  resources :suggests
  resources :orders
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
