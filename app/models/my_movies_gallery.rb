class MyMoviesGallery < ApplicationRecord
belongs_to :user
has_many :favorites
has_many :movies, through: :favorites

end
