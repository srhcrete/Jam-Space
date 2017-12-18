Rails.application.routes.draw do
  devise_for :providers, path: 'provider'
  devise_for :bands, path: 'band'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
