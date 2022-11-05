Rails.application.routes.draw do
  resources :announcements
  root to: 'pages#home'
  #root to: 'public#homepage'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  resources :ks_hubs
  #root 'ks_hubs#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end