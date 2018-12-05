Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  resources :welcome, only: [:index]
  root controller: :welcome, action: :index
end
