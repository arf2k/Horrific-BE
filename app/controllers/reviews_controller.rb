class ReviewsController < ApplicationController

def show 

my_reviews = Review.where(user: current_user)


render json: my_reviews

end

def movie_reviews
movie_reviews = Review.all.each{|review| review.movie}

render json: movie_reviews.where(user: current_user)

end

end
