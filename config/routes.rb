Rails.application.routes.draw do
  devise_for :users

  resources :events do
    resources :bookings, only: %i[new create]
   # resources :favourites, only: %i[create destroy]
  end
  resources :bookings, only: %i[index show edit update]
  resources :favourites, only: %i[index create destroy]

  root to: 'pages#home'
end
