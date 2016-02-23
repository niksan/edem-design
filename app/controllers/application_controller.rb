class ApplicationController < ActionController::Base
  
  protect_from_forgery
  before_filter :find_last_news, :find_special_offers
  

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.new_user_session_path, :alert => exception.message
  end

  private

    def find_last_news
      @last_news = News.order('date DESC').limit(4)
    end

    def find_special_offers
      @special_offers = SpecialOffer.where(public: true).order('updated_at DESC')
    end

end
