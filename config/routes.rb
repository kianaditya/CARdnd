Rails.application.routes.draw do
  resources :automobiles, only: [:index, :new, :create, :edit]
  root controller: :automobiles, action: :index
  devise_for :users
  resources :users, only: [:show, :index]
end
