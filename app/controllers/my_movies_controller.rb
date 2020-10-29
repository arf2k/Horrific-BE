class MyMoviesController < ApplicationController


def my_favorites 
     my_favorites = Movie.find_by(user: current_user)

     render json: my_favorites

end
