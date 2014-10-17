class PortfolioController < ApplicationController

  def index
    @portfolios = Portfolio.all
    @tags = []
    @portfolios.map { |i| i.tags.to_s.gsub('"', '').split(', ') }.each do |a|
      @tags << a
    end
    @tags.flatten!
    @tags.uniq!
  end

  def show
    @portfolio = Portfolio.includes(:portfolio_items).find(params[:id])
  end

end
