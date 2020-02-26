Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'index', to: 'pages#index', as: :index
  get 'profile', to: 'pages#profile', as: :profile
  resources :goods, only:[:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create, :show]
  end

  resources :bookings, only: [:list, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
