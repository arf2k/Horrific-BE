class MyMoviesController < ApplicationController
     skip_before_action :authorized

def index 
     my_favorites = Favorite.where(user: current_user)

#     movies = current_user.favorites.map{|movies| movies.title}
#      if movies
          render json: my_favorites 
   
end



# def fave_movies 
#      my_favorites.each do |movies|
#           movies.title
   
# end

end
