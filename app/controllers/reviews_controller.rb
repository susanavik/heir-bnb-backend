class ReviewsController < ApplicationController
    
    def index
        reviews = Review.all 
        render json: reviews
    end

    def show
        
    review = Review.find(params[:id])
        if review
            render json: review
        else
            render json: { error: "Not found!" }, status: 404
        end
    end

    def create 
        review = Review.new(review_params)
        render json: review
    end

    def update
        review = review.find(params[:id])
        review.update(review_params)
    end

    def destroy
        review = review.find(params[:id])
        review.destroy
    end

private
    def review_params
        params.require(:review).permit(:rating, :comment)
    end
    
end
