Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :memberships do
    resources :reviews
  end
end
