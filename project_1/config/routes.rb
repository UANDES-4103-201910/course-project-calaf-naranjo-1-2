Rails.application.routes.draw do
  resources :users
  resources :guests
  resources :posts
  resources :admins
  resources :super_admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
