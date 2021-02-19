Rails.application.routes.draw do
  resources :teeboxes
  resources :newrounds
  resources :users
  resources :coursedata
  resources :golfcourses

  post '/login', to: 'authentication#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
