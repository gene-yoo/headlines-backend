Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      resources :articles, only: [:index, :create, :update, :destroy]

      get '/home', to: 'users#home', as: 'home_path'
      get '/signup', to: 'users#new', as: 'signup'

      post '/login', to: 'auth#create', as: 'new_session'
      get '/current_user', to: 'auth#show', as: 'show_current_session'
      get '/snake', to: 'auth#snake', as: 'snake_path'
    end
  end
end
