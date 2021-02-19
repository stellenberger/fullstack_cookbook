Rails.application.routes.draw do
  get 'shopping_list_items/index'
  get 'shopping_list_items/destroy'
  get 'wishlist_items/index'
  get 'wishlist_items/create'
  get 'wishlist_items/update'
  get 'wishlist_items/destroy'
  get 'recipes/index'
  get 'recipes/create'
  get 'recipes/update'
  get 'recipes/destroy'
  get 'dishes/index'
  get 'dishes/create'
  get 'dishes/update'
  get 'dishes/destroy'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
