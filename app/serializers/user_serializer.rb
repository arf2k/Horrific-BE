class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :avatar
  has_one :my_movies_gallery
end
