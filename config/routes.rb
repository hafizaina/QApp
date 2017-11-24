Rails.application.routes.draw do
  root 'application#home'
  resources :titles
  resources :temporary_tags
  resources :tag_renewals
  resources :registrations
  resources :users

  get '/newuser',    to: 'users#new'
  post '/newuser',   to: 'users#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
