Rails.application.routes.draw do
  resources :teeboxes
  resources :newrounds
  resources :users
  resources :coursedata
  resources :golfcourses

  post '/login', to: 'authentication#login'

  get '/show_rounds', to: 'newrounds#show_rounds'
  get'/average_score', to: 'newrounds#average_score'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
