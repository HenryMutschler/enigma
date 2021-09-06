Rails.application.routes.draw do
  devise_for :users
  resources :users, only: %i[show]

  resources :events do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[index show edit update]

  resources :favourites, only: %i[index create destroy]
  resources :reviews, only: %i[index new create]

  root to: 'pages#home'
end
