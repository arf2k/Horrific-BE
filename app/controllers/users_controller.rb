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
          # my_fave = MyMovie.find_or_create_by(user: current_user)
          # new_favorite = Movie.create(movie_params)
          fave = Favorite.create(user: current_user, movie_id: params["movie_id"])
     end

     private
    
     def user_params
          params.require(:user).permit(:username, :password, :avatar)
     end

     def movie_params
          params.require(:movie).permit(:poster_path, :popularity, :vote_count, :video, :media_type, :apiId, :adult, :backdrop_path, :original_language, :original_title, :genre_ids, :title, :vote_average, :overview, :release_date)
        end
      
        def fave_params
          params.require(:favorite).permit!
        end



end

