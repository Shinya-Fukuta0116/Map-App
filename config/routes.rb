Rails.application.routes.draw do
  get 'maps/new'
  post 'maps' => 'maps#create'
  root to: 'maps#new'
  get 'maps/index'
  resources :maps, only: [:new, :index]
end
