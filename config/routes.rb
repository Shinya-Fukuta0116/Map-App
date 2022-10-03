Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
  root :to => "devise/registrations#new"
end
  resources :guide_details, only: [:new, :index, :create]
  resources :guides, only: [:new, :index, :create]
end
