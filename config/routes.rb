Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: "home#index"

  resources :memberships do
    resources :reviews
  end

  resources :users

  resources :contacts, only: [:index]

end
