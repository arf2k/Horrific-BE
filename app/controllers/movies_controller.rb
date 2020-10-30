class MoviesController < ApplicationController
skip_before_action :authorized

     def index
          results = Api.movies(params[:id])
         
          render json: results
     end

     def show
          single_movie = Api.single_movie(params[:id])
     
          render json: single_movie
     end
     


end
