Rails.application.routes.draw do

  devise_for :users
  resources :organizations
  resources :profiles
  resources :timecards
  resources :hour_counts
  resources :invites

	root to: "users#index"

end
