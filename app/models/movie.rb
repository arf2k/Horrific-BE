class Movie < ApplicationRecord

has_many :favorites
has_many :people, through: :favorites, foreign_key: "movie_id", class_name: "User"
has_many :my_movies_galleries, through: :favorites
has_many :reviews
has_many :users, through: :reviews 


     


end
