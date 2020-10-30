class Api < ApplicationRecord 
     require 'net/http'

     def self.api_call(url)
          uri = URI(url)
          response = Net::HTTP.get_response(uri)
          json_response = JSON.parse(response.read_body)
     end

     def self.movies
          url = "https://api.themoviedb.org/3/list/7062993?&api_key=#{ENV['TMDB_KEY']}"
          response = Api.api_call(url)
     end

     def self.single_movie(movie_id)
          url = "https://api.themoviedb.org/3/movie/#{movie_id}?&api_key=#{ENV['TMDB_KEY']}"
          response = Api.api_call(url)
     end

end
