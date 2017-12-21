Rails.application.routes.draw do
  root to: 'home#index'

  get '/sign_up' => 'users#new'
  post '/users' => 'users#create'

  get '/sign_in' => 'sessions#new'
  post '/sign_in' => 'sessions#create'
  get 'sign_out' => 'sessions#destroy'

  resources :bands do
    resources :tags
    resources :reviews
  end

  resources :services do
    resources :tags
    resources :reviews
  end

  resources :bookings
  resources :home
end
