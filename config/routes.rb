Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  resources :advertisements, only: [:index, :show]

  resources :users do
    resources :properties
    resources :bids
    resources :advertisements
  end

  root 'advertisements#index'
end
