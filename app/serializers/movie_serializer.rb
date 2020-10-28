class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :description
end
