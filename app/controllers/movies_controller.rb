class MoviesController < ApplicationController
skip_before_action :authorized

     def index 
          results = Api.movies(params[:id])

          render json: results
     end



end
