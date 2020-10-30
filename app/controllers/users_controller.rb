class UsersController < ApplicationController
skip_before_action :authorized, only: [:create, :login]

     def create
          @user = User.create(user_params)

          if @user.valid?
               @token = encode_token(user_id: @user.id)
               render json:  { user: User.new(@user), jwt: @token, message: 'user created' }, status: :created

          else 
               render json: { error: 'failed to create user' }, status: :not_acceptable
          end
     end


     def auth 
          
          render json: { user: User.new(@user) }, status: :accepted
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
          my_fave = MyMovie.find_or_create_by(user: current_user)
          new_favorite = Movie.create(movie_params)
          fave = Favorite.create(user: current_user, movie: new_favorite)
     end

     private
    
     def user_params
          params.require(:user).permit(:username, :password, :avatar)
     end

     def movie_params
          params.require(:movie).permit(:title, :description, :image)
        end
      
        def fave_params
          params.require(:favorite).permit!
        end



end

