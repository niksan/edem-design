class PortfolioController < ApplicationController

  def index
    @portfolios = Portfolio.all
  end

  def show
    @portfolio = Portfolio.includes(:portfolio_items).find(params[:id])
  end

end
