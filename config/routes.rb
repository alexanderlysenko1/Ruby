Rails.application.routes.draw do
  root:'products#show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :suppliers
  resources :products
  resources :orders
  resources :order_items
  resources :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
