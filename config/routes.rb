Rails.application.routes.draw do
  get 'events/index'
  get 'events/show'
  get 'events/new'
  get 'events/edit'
  devise_for :users
  root to: 'pages#home'
  
  resources :users, only: %i[show]

  resources :events do 
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: %i[index show edit update]
end
