Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { registrations: 'users/registrations', omniauth_callbacks: 'omniauth_callbacks' }
  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup

  resources :properties, only: [:index, :show] do
    resources :bids, only: [:show]
  end

  resources :users do
    resources :properties do
      resources :bids, only: [:create]
    end
  end

  root 'properties#index'
end
