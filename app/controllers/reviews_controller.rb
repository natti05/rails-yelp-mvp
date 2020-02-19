class ReviewsController < ApplicationController
  def show
    @reviews = Review.find(params[:id])
    @review.all
  end

  def new
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
  end


  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def restaurant_params
    params.require(:restaurant, :review).permit(:name, :address, :phone_number, :category, :rating)
  end
end

