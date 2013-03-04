class PortfolioController < ApplicationController

  def index
    @portfolios = Portfolio.order('created_at DESC')
  end

  def show
    @portfolio = Portfolio.includes(:portfolio_items).find(params[:id])
  end

  def from_paperclip_to_carrierwave
    render text: 'fuck you!!!'
  end

end
