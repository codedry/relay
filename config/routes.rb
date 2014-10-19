Rails.application.routes.draw do

  resources :tickets

  root 'home#index'

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure',            to: 'sessions#failure'

  get '/signout',                 to: 'sessions#destroy'
end
