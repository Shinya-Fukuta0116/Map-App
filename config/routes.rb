Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
  root :to => "devise/registrations#new"
end
  post '/guide_details/"+guide_id+"/edit/guide_map', to: 'edit#guide_map'
  resources :guide_details, only: [:edit, :index, :create]
  resources :guides, only: [:new, :index, :create]
end
