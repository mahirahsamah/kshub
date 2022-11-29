# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :events
  resources :announcements
  root to: 'pages#home'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  #devise_for :users
  resources :users#, only: [:index]

  resources :ks_hubs
  resources :profile_page
  resources :members
  resources :profile
  resources :merches

  get 'members' => 'members#index', :as => 'members_path'

  # root 'ks_hubs#index'

  # Added route for updating the status of a member to inactive
  get 'members/remove/:id' => 'members#set_active_status', :as => 'members_remove'
  get 'announcements/remove/:id' => 'announcements#set_active_status', :as => 'announcements_remove'
  get 'events/remove/:id' => 'events#set_active_status', :as => 'events_remove'
  get 'merches/remove/:id' => 'merches#set_active_status', :as => 'merches_remove'

  # or details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
