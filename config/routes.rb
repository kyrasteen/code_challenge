Rails.application.routes.draw do
  root 'items#index'

  resources :items,  only: [:index, :show]
  resources :favorites

  resources :orders, only: [:index, :show, :create]
  resources :users,  only: [:index, :show]
end
