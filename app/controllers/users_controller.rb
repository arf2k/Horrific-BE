class UsersController < ApplicationController
skip_before_action :authorized, only: [:create, :login]

     def create
          @user = User.create(user_params)

          if @user.valid?
               @token = encode_token(user_id: @user.id)
               render json:  { user: UserSerializer.new(@user), jwt: @token}, status: :created

          else 
               render json: { error: 'failed to create user' }, status: :not_acceptable
          end
     end


     def auth 
          
          render json: { user: UserSerializer.new(@user) }, status: :accepted
     end


     def login
          @user= User.find_by(username: user_params[:username])
          if @user.authenticate(user_params[:password])
               token = encode_token({ user_id: @user.id})
               render json: { user: UserSerializer.new(@user), jwt: token}, status: :accepted
          else
               render json: { message: 'Invalid username or password' }, status: :unauthorized
          end
     end

     def add_favorites 
          fave = Favorite.find_or_create_by(user_id: params[:user][:id], movie_id: params[:movie][:id], poster_path: params[:movie][:poster_path], title: params[:movie][:title], overview: params[:movie][:overview])
          render json: fave 
          
     end


     def delete_favorite
          fave = Favorite.destroy(params[:id])
          render json: fave
     end


     def add_reviews 
          review = Review.create(user: current_user, movie_id: params[:id], review: params[:review], title: params[:title], username: params[:username], avatar: params[:user][:avatar])
          render json: review
          
     end

     def update_reviews
          review= Review.find(params[:id])
          review.update(review_params)
          render json: review
     end

     def delete_review
          review = Review.destroy(params[:id])
          render json: review
     end

     private
    
     def user_params
          params.require(:user).permit(:id, :username, :password, :avatar)
     end

     def movie_params
          params.require(:movie).permit(:poster_path, :popularity, :vote_count, :video, :media_type, :adult, :backdrop_path, :original_language, :original_title, :genre_ids, :title, :vote_average, :overview, :release_date, :original_name, :name, :origin_country, :first_air_date, :apiId )
        end
      
        def fave_params
          params.require(:favorite).permit!
        end

        def review_params
          params.require(:review).permit(user: current_user, movie_id: params[:id], review: params[:review], title: params[:title], username: params[:username], avatar: params[:user][:avatar])
        end



end

