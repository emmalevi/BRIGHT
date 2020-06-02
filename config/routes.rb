Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'map', to: 'issues#map', as: :map

  #Issues
  resources :issues, only: [:index, :show] do
  #Charities
    resources :charities, only: :show do
      resources :donations, only: [:show, :create] do
        resources :payments, only: :new
      end
    end
  end

  get 'dashboard', to: 'dashboard#new'
end
