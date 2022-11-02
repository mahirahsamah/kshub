Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :ks_hubs
  #root 'ks_hubs#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end