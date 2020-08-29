Rails.application.routes.draw do
  devise_for :users
  resources :theaters do
  end
end
