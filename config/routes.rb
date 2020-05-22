Rails.application.routes.draw do
  devise_for :users
  root to: 'issues#map'

  get 'bright', to: 'pages#home'

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
