Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :users
resources :movies
resources :my_movies

post '/login', to: 'users#login'
get 'auth', to: 'users#auth'
get '/profile', to: 'users#profile'
get '/movies', to: 'movies#index'
get 'my_movies', to: 'my_movies#my_favorites'
post 'users/favorites', to: 'users#add_favorites'
get 'movies/:id', to: 'movies#show'
end
