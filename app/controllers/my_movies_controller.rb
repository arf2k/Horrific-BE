class MyMoviesController < ApplicationController
     skip_before_action :authorized

def index 
     my_favorites = Favorite.where(user: current_user)
     my_reviews = Review.where(user: current_user)
     
     render json: { favorites: my_favorites, reviews: my_reviews} 
   
end


end
