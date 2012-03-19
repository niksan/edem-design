# encoding: utf-8
class ApplicationController < ActionController::Base
  
  protect_from_forgery

  before_filter :find_last_news, :find_special_offers
  
  private

    def find_last_news
      @last_news = News.order('id DESC').limit(4)
    end

    def find_special_offers
      @special_offers = SpecialOffer.order('created_at DESC')
    end

end
