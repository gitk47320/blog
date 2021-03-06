Rails.application.routes.draw do
  root 'top#index'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :posts do
    resources :comments
  end
  resources :users do
    resource :profile
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
