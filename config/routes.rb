Rails.application.routes.draw do
  resources :automobile, only: [:index]
  root controller: :car_card, action: :index
  devise_for :users
end
