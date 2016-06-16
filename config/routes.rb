Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'users/registrations' }
  resources :organizations
  resources :profiles
  resources :timecards
  resources :hour_counts
  resources :invites

	root to: "invites#new"

end
