class ReviewsController < ApplicationController

def show 

my_reviews = Review.where(user: current_user)


render json: my_reviews

end



end
