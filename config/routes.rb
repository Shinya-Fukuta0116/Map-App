Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    root :to => "devise/registrations#new"
  end

  post '/guide_details/:guide_id/edit/guide_map', to: 'guide_details#guide_map'
  resources :guide_details, only: [:index, :new, :create, :edit]
  resources :guides, only: [:index, :new, :create]
end

