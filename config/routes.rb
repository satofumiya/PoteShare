Rails.application.routes.draw do
  root 'users#index'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users do
    member do
      get :profile
    end
  end
  resources :searches, only: :index
  resources :hotels
  resources :reservations, :only => [:index, :new, :create] do
    collection do
      post :confirm
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
