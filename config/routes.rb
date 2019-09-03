Rails.application.routes.draw do
  resources :fizers
  resources :commerces
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  
  get '/welcome', to: 'home#welcome'
end
