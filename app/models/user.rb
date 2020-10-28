class User < ApplicationRecord
     has_secure_password

     has_one :my_movies_gallery
     has_many :reviews
     has_many :films, through: :reviews, foreign_key: "user_id", class_name: "Movie"
     has_many :favorites
     has_many :movies, through: :favorites 


     validates :username, uniqueness: { case_sensitive: false }
end
