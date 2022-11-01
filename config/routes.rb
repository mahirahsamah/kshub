Rails.application.routes.draw do
  resources :events
  resources :comments
  resources :merch_links
  resources :announcements
  resources :users
  resources :ks_hubs

  get "profile", to: "profiles#edit", as: :edit_profile
  patch "profile", to: "profiles#update"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

  get "announcements", to: "announcements#new"

  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"

  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"

  root to: 'ks_hubs#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end