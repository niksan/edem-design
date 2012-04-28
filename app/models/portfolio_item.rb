# encoding: utf-8
class PortfolioItem < ActiveRecord::Base
  belongs_to :portfolio
  image_url = "/system/:attachment/:id/:style/:basename.:extension"
  has_attached_file :portfolio_item_image, :styles => { :medium => "800x600>", :thumb => "200x140#" }, url: image_url, path: image_url
end
