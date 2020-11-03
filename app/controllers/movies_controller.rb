class MoviesController < ApplicationController
skip_before_action :authorized

     def index
          results = Movie.all
         
          render json: results 
     end

     def show
          single_movie = Movie.find(params[:id])
          # with_reviews = Review.all.filter{|review| review.movie == single_movie}
          reviews = Review.where(movie_id: params[:id])
          

          render json: { single_movie: single_movie, reviews: reviews }
    
     end

     
    
  
end
