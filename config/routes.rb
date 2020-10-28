Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :users

post '/login', to: 'users#login'
get 'auth', to: 'users#auth'
get 'auth', to: 'users#auth'
get '/profile', to: 'users#profile'

end
