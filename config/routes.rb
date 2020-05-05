Rails.application.routes.draw do
  devise_for :users
  root to: 'issues#map'

#Issues
  resources :issues, only: [:index, :show] do
    resources :charities, only: :index
  end

#Charities
  resources :charities, only: :show do
    resources :donations, only: [:new, :create]
  end

get "donations/:id", to: "donations#show", as: :donation

end
