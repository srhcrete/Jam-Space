Rails.application.routes.draw do

  devise_for :users
  root to: 'home#index'

  resources :bands do
    resources :tags
    resources :reviews
  end

  resources :services do
    resources :tags
    resources :reviews
  end
  
  resources :bookings
end
