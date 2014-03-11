class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end
  
  def create
    Review.create(review_params)
    respond_to :js
  end

  private

    def review_params
      params.require(:review).permit(:name, :phone, :email, :body, :theme)
    end


end
