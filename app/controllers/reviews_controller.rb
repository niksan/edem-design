class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end
  
  def create
    Review.create(params[:review])
    respond_to :js
  end

end
