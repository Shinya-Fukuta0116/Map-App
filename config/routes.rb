Rails.application.routes.draw do
  root to: 'maps#new'
  get 'maps/index'
  resources :maps, only: [:new, :index, :create]
  resources :guides, only: [:new, :index, :create]
end
