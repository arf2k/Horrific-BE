class VideosController < ApplicationController
     skip_before_action :authorized


     def index
        videos = Video.all
          render json: videos
          
     end

     def all_videos
          
          all = Comment.where(video_id: params[:id])

          render json: all 
     end


     def my_videos

          mine = Videos.where(user: current_user)

          render json: mine 

     end

 



end
