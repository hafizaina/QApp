Rails.application.routes.draw do
  resources :titles
  resources :temporary_tags
  resources :tag_renewals
  resources :registrations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
