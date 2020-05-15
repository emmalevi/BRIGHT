Rails.application.routes.draw do
  devise_for :users
  root to: 'issues#map'

  #Issues
  resources :issues, only: [:index, :show]

  #Charities
  resources :charities, only: :show do
    resources :donations, only: [:new, :create] do
      resources :payments, only: :new
  end
  end

  get "donations/:id", to: "donations#show", as: :donation
  get 'dashboard', to: 'dashboard#new'

end
