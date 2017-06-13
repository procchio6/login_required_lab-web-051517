Rails.application.routes.draw do
  post '/login' => 'sessions#create'
  get '/login' => 'sessions#new'
  post '/logout' => 'sessions#destroy'
  root 'secrets#welcome'
  get '/secrets' => 'secrets#show'
end
