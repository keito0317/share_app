Rails.application.routes.draw do
  get 'reservations/index'
  resources :rooms
  resources :reservations
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
