# encoding: utf-8
class NewsController < ApplicationController
  
  before_filter :find_news, :except => [:index]
  
  def index
    @news = News.order('date DESC')
  end

  def show
  end

  private
    
    def find_news
      @news = News.find(params[:id])
    end

end
