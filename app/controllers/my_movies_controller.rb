class MyMoviesController < ApplicationController
     skip_before_action :authorized

def index
     my_favorites = Favorite.all.find_by(user: current_user)

     render json: my_favorites
end

end
