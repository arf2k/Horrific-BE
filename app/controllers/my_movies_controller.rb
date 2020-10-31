class MyMoviesController < ApplicationController
     skip_before_action :authorized

def my_favorites 
     my_favorites = Favorite.where(user: current_user)
end


def fave_movies 
     my_favorites.each do |movies|
          movies.title

     byebug 
     render json: fave_movies, status: :accepted 
end

end
