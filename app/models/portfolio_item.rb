# encoding: utf-8
class PortfolioItem < ActiveRecord::Base
  belongs_to :portfolio
  has_attached_file :portfolio_item_image, :styles => { :medium => "800x600>", :thumb => "200x140#" }
end
