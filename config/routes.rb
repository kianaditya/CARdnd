Rails.application.routes.draw do
  resources :automobiles, only: [:index]
  root controller: :automobiles, action: :index
  devise_for :users
  resources :users, only: [:show]
end
