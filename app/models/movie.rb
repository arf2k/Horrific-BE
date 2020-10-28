class Movie < ApplicationRecord

     def index 
          results = Api.movies(params[:id])
     
     render json: results
     


end
