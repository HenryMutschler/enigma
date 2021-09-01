Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: %i[show]


  resources :favourites, only: %i[new create index destroy]

  resources :events do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[index show edit update]
end
