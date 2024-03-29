class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
    @review.restaurant = @restaurant
  end
  def create
    # @restaurant = Restaurant.find(params[:restaurant_id])
    # @review = Review.new(review_params)
    # @review.restaurant = @restaurant
    # @review.save
    # redirect_to restaurant_path(@restaurant)
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
  private
  def review_params
    params.require(:review).permit(:content, :rating, :restaurant_id)
  end
