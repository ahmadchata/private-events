Rails.application.routes.draw do
  root 'events#index'

  get 'signup' => 'users#new', as: 'signup'
  get 'login' => 'sessions#new', as: 'login'
  get 'logout' => 'sessions#destroy', as: 'logout'
  get 'attend' => 'events#attend', as: 'attend'
  get 'cancel_attend' => 'events#cancel_attend', as: 'cancel_attend'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :events
  resources :sessions, only: [:new, :create, :destroy]
end
