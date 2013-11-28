class PortfolioItem < ActiveRecord::Base
  belongs_to :portfolio
  path = ":rails_root/public/system/:attachment/:id/:style/:basename.:extension"
  url = "/system/:attachment/:id/:style/:basename.:extension"
  has_attached_file :portfolio_item_image, :styles => { :medium => "800x600>", :thumb => "200x140#" }, url: url, path: path

end
