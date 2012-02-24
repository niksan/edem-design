# encoding: utf-8
class ReviewsController < ApplicationController
  def index
    @reviews = Review.where(:approve => true).order('id DESC')
  end
  
  def create
    Review.create(params[:review])
    respond_to do |format|
      format.js
    end
  end

end
