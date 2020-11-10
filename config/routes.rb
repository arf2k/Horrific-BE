Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :users
resources :movies
resources :my_movies
resources :favorites
resources :reviews
resources :comments
resources :videos

post '/login', to: 'users#login'
get 'auth', to: 'users#auth'
get '/profile', to: 'users#profile'
get '/movies', to: 'movies#index'
get 'my_movies', to: 'my_movies#my_favorites'
post 'users/favorites', to: 'users#add_favorites'
get 'movies/:id', to: 'movies#show'
post '/movies/:id/reviews', to: 'users#add_reviews'
delete '/movies/:id/reviews/:id', to: 'users#delete_review'
get 'movies/:id/my_reviews', to: 'reviews#show'
delete 'users/favorites/:id', to: 'users#delete_favorite'
get 'movies/:id/reviews', to: 'movies#all_reviews' 
post '/videos/comments', to: 'comments#create'
post '/videos/:id/comments', to: 'users#add_video_reply'
get '/videos', to: 'videos#index'
get '/videos/:id/comments', to: 'videos#all_videos'

end
