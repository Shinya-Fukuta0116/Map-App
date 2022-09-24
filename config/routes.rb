Rails.application.routes.draw do
  root to: 'guide_details#new'
  get 'guide_details/index'
  resources :guide_details, only: [:new, :index, :create]
  resources :guides, only: [:new, :index, :create]
end
