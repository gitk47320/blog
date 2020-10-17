Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  get '/login', to: 'sessions#create'
  post '/login', to: 'sessions#destroy'
  root 'top#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
