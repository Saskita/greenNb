Rails.application.routes.draw do
  resources :plants, except: [:new] do
    resources :bookings, only: [ :new, :create ]
  end
  resources :bookings, only: [ :edit, :update ]

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
