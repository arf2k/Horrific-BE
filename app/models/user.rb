class User < ApplicationRecord
     has_secure_password

     has_one :my_movies_gallery
     has_many :reviews, dependent: :destroy
     has_many :films, through: :reviews, foreign_key: "user_id", class_name: "Movie"
     has_many :favorites, dependent: :destroy
     has_many :movies, through: :favorites 


     validates :username, uniqueness: { case_sensitive: false }
end
