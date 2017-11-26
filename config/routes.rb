Rails.application.routes.draw do
  get 'sessions/new'

  root 'application#home'
  resources :titles
  resources :temporary_tags
  resources :tag_renewals
  resources :registrations
  resources :users

  get       '/newuser',   to: 'users#new'
  post      '/newuser',   to: 'users#create'
  get       '/login',     to: 'sessions#new'
  post      '/login',     to: 'sessions#create'
  delete    '/logout',    to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
