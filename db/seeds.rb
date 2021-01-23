
Review.destroy_all
Favorite.destroy_all 
Movie.destroy_all
User.destroy_all
Comment.destroy_all 
Video.destroy_all 




ApiMovies = Api.movies 
ApiMovies["items"].each do |apiMovie|
     if !!apiMovie["title"]  
          Movie.create(apiMovie)
     end
end 


