class ReviewsController < ApplicationController
  def new
    @stay = Stay.find(params[:stay_id])
    @review = Review.new
  end

  def create
    @stay = Stay.find(params[:stay_id])
    @review = Review.new(review_params)
    @review.stay = @stay
    @review.save

    redirect_to site_path(@stay.site)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end

end
