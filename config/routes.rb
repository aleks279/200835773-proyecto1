Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :properties, only: [:index, :show]

  resources :users do
    resources :properties do
      resources :bids, only: [:create]
    end
  end

  root 'properties#index'
end
