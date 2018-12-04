Rails.application.routes.draw do
  resources :automobile
  root controller: :car_card, action: :index
end
