class MovieSerializer < ActiveModel::Serializer
  attributes :id, :poster_path, :popularity, :vote_count, :video, :media_type, :apiId, :adult, :backdrop_path, :original_language, :original_title, :genre_ids, :title, :vote_average, :overview, :release_date
end
