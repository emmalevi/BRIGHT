Rails.application.routes.draw do
  devise_for :users
  root to: 'issues#index'

#Issues
  get    "issues", to: "issues#index"
  get    "issues/:id", to: "issues#show", as: :issue

#Charities
  get    "charities", to: "charities#index"
  get    "charities/:id", to: "charities#show", as: :charity

#Donations
get    "charities/:charity_id/donations/new", to: "donations#new",  as: :new_donation
post   "charities/:charity_id/donations", to: "donations#create"
get    "donations/:id", to: "donations#show", as: :donation

end
