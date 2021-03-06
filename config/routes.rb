Rails.application.routes.draw do
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  devise_for :users

  resources :plants do
    resources :bookings, only: [ :new, :create]
  end
  resources :bookings, only: [ :edit, :update, :show ]
end
