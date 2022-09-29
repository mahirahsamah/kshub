Rails.application.routes.draw do
  resources :events
  resources :comments
  resources :merch_links
  resources :announcements
  resources :users
  resources :ks_hubs
  root 'ks_hubs#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end