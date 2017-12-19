Rails.application.routes.draw do
  devise_for :providers, path: 'providers', controllers: { sessions: 'providers/sessions', registrations: 'providers/registrations', passwords: 'providers/passwords' }
  devise_for :bands, path: 'bands', controllers: { sessions: 'bands/sessions', registrations: 'bands/registrations', passwords: 'bands/passwords' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
