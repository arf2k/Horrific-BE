class CommentsController < ApplicationController
     skip_before_action :authorized

     # def create
     #      videoUpdate = Video.find_by(yt_id: params[:yt_id])
     #     if videoUpdate 
     #       videoUpdate.update(user_id: current_user.id, comment: params[:comment], avatar: params[:user][:avatar], username: params[:user][:username], thumbnail: params[:thumbnail], title: params[:title]) 
     # else 
     #      video = Video.create(user_id: current_user.id, comment: params[:comment], yt_id: params[:yt_id], avatar: params[:user][:avatar], username: params[:user][:username], thumbnail: params[:thumbnail], title: params[:title]) 

     #      comment = Comment.create(user_id: current_user.id, comment: params[:comment], yt_id: params[:yt_id], avatar: params[:user][:avatar], username: params[:user][:username], video: video)

     #      render json: { video: video, videoUpdate: videoUpdate, comment: comment }
     # end
     # end


     def create 
          video = Video.find_or_create_by(user_id: current_user.id, comment: params[:comment], yt_id: params[:yt_id], avatar: params[:user][:avatar], username: params[:user][:username], thumbnail: params[:thumbnail], title: params[:title]) 
          comment = Comment.create(user_id: current_user.id, comment: params[:comment], yt_id: params[:yt_id], avatar: params[:user][:avatar], username: params[:user][:username], video: video)

          render json: { video: video, comment: comment}
     end
     
     def index
          comments = Comment.all 
     end
     
     def video_comments
          video_comments = Comment.where(video_id: params[:id])

          render json: video_comments
     end
     
     
     def user_comments

          my_comments = Comment.where(user: current_user)
          
          
          render json: my_comments
          
     end


 
     def show 
          comment = Comment.find(params[:id])
     end


end
 