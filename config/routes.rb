Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'travel#index'
  get '/search' => 'travel#search'
  #devise_for :users, controllers: {omniauth_callbacks: 'omniauth_callbacks'}
  mount API::Base, at: "/"
  
  
  #get 'travel/confirmed', action: 'confirmed', controller: 'travel_controller'
  #get 'covid/index'
  #get 'covid/confirmed'
  #get 'covid/recovered'
  #get 'covid/deaths'

  get 'covid/index'
  get '/confirmed', action: 'confirmed', controller: 'covid'
  get '/recovered', action: 'recovered', controller: 'covid'
  get '/deaths', action: 'deaths', controller: 'covid'
  
end
