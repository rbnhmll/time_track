Rails.application.routes.draw do

  resources :organizations
  devise_for :users
  resources :profiles
  resources :timecards
  resources :hour_counts
  resources :invites

	root to: "users#index"

end
