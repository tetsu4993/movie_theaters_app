Rails.application.routes.draw do
  devise_for :users
  root to: 'theaters#index'
  resources :theaters
  resources :users, only: :show
end