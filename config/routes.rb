Rails.application.routes.draw do
  devise_for :users
  
  root to: 'home#index'

  resources :wishlist_items
  resources :recipes
  resources :shopping_list
  
end
