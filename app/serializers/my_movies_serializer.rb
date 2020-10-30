class MyMoviesSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_many :favorites
  has_many :movies, through: :favorites
end
