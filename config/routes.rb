Rails.application.routes.draw do
  resources :automobile
  root controller: :car_card, action: :index
  devise_for :users
  resources :welcome, only: :index
end
