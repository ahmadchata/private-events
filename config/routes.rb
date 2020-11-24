# frozen_string_literal: true

Rails.application.routes.draw do
  root 'events#index'

  get 'signup' => 'users#new', as: 'signup'
  get 'login' => 'sessions#new', as: 'login'
  get 'logout' => 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :events do
    member do
      get 'attend'
      get 'cancel'
    end
  end
  resources :users
  resources :events
  resources :sessions, only: %i[new create destroy]
end
