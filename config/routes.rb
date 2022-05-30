Rails.application.routes.draw do
  devise_for :users
  resources :allies
  get 'home/about'
  root 'home#index'
end
