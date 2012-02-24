# encoding: utf-8
class PortfolioController < ApplicationController

  def index
    @portfolios = Portfolio.order('created_at DESC')
  end

  def show
    @portfolio = Portfolio.includes(:portfolio_items).find(params[:id])
  end

end
