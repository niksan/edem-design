# encoding: utf-8
class ArticlesController < ApplicationController
  
  before_filter :find_article, :except => [:index]
  before_filter :find_help_info

  def index
    @article = Article.find(44)
    @childrens = @article.children
    render :action => 'show'
  end

  def show
    redirect_to root_path if @article.special_offers.any? { |s| s.public == false }
  end

  private
    
    def find_article
      @article = Article.find(params[:id])
      @childrens = @article.children
    end
    
    def find_help_info
      @help_info = Article.where(:help_info => true).order('title')
    end

end
