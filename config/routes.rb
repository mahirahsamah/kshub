Rails.application.routes.draw do
  resources :events
  resources :announcements
  root to: 'pages#home'
  #root to: 'public#homepage'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  resources :ks_hubs
  resources :profile_page
  resources :members
  resources :profile
  resources :merches

  put 'profile_page' => 'profile_page#edit', :as => 'profile_page_update_path'
  get 'members' => 'members#index', :as => 'members_path'
  delete 'members' => 'members#destroy', :as => 'members_delete_path'


  #root 'ks_hubs#index'
  # or details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end