Rails.application.routes.draw do
  root 'users#index'
  resources :users do
    member do
      get :profile
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: { registrations: 'users/registrations' }



end
