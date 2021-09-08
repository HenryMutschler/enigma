Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  resources :users, only: %i[show]

  resources :events do
    resources :bookings, only: %i[new create]
    resources :favourites, only: %i[create]
  end
  resources :bookings, only: %i[index show edit update] do
    resource :review, only: %i[new create]
  end

  resources :favourites, only: %i[index destroy]
  resources :reviews, only: %i[show]

  root to: 'pages#home'
end
