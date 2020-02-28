Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'index', to: 'pages#index', as: :index
  get 'profile', to: 'pages#profile', as: :profile
  delete 'profile', to: 'bookings#destroy', as: "booking_destroy"


  resources :goods do
    resources :bookings, only: [:new, :create, :show]
  end

  resources :bookings, only: [:list, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
