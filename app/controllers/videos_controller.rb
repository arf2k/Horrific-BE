class VideosController < ApplicationController
     skip_before_action :authorized


     def index
        videos = Video.all 
          render json: videos 
          
     end

 



end
