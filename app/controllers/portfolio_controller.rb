class PortfolioController < ApplicationController

  def index
    @portfolios = Portfolio.all
    @tags = Tag.all
  end

  def show
    @portfolio = Portfolio.includes(:portfolio_items).find(params[:id])
  end

end
