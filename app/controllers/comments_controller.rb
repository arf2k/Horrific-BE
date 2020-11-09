class CommentsController < ApplicationController

     def create
          video = Video.create(user_id: current_user.id, comment: params[:comment], yt_id: params[:yt_id], avatar: params[:user][:avatar], username: params[:user][:username])
          
          comment = Comment.create(user_id: current_user.id, comment: params[:comment], yt_id: params[:yt_id], avatar: params[:user][:avatar], username: params[:user][:username], video: video)

          render json: { video: video, comment: comment }
     end
     
     def index 
          comments = Comment.all 
     end
     
     
     
     def user_comments

          my_comments = Comment.where(user: current_user)
          
          
          render json: my_comments
          
     end

     def show 
          comment = Comment.find(params[:id])
     end


end
 