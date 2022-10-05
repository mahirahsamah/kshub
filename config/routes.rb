Rails.application.routes.draw do
  get 'sessions/new'
  resources :events
  resources :comments
  resources :merch_links
  resources :announcements
  resources :users
  resources :ks_hubs
  root 'ks_hubs#index'

  #resources :posts
  get '/register', to:'users#new'
  resources :users, only: [:create]
  get '/sign_in', to:'sessions#new'
  get '/sign_out', to:'sessions#destroy'
  resource :sessions, only: [:create]

end