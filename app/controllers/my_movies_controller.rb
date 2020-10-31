class MyMoviesController < ApplicationController
     skip_before_action :authorized

def index
    
     # my_favorites = Favorite.find_by(params[:user_id])

   my_favorites= Favorite.find_by(user: params["current_user"])
#      my_favorites = Favorite.find(id: params["current_user"])
# byebug
     render json: my_favorites, status: :accepted 
end

end
