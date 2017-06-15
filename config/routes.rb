Rails.application.routes.draw do
  resources :users
  resources :tests
  match ':controller(/:action(/:id))', :via => :get

  get '/about', to: 'pages#about'
  post '/signup', to: 'users#signup'
  get '/signup', to: 'users#signup'
  post '/signin', to: 'users#signin'
  get '/signin', to: 'users#signin'

  get '/logout', to: 'users#logout'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#index'
end
