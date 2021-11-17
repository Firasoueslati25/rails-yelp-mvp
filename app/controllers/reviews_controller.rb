class ReviewsController < ApplicationController
  def new
    # we need @restaurant in our `simple_form_for`
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

    # def destroy
    # @review = Review.find(params[:id])
    # @review.destroy
    # redirect_to restaurant_path(@review.restaurant)
    # end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
