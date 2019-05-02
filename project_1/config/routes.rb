Rails.application.routes.draw do
  resources :comments
  resources :follows
  resources :geofences
  resources :innapropiates
  resources :dumpsters
  resources :blacklists
  resources :votes
  resources :links
  resources :attachments
  resources :images
  resources :profiles
  resources :users
  resources :guests
  resources :posts
  resources :admins
  resources :super_admins

  root to: "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
