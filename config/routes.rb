Rails.application.routes.draw do
  root 'users#index'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users do
    member do
      get :profile
    end
  end
  resources :hotels
  resources :reservations, :only => [:index, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html




end
