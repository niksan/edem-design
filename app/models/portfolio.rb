class Portfolio < ActiveRecord::Base

  attr_accessible :name, :portfolio_image, :portfolio_item_ids, :image, :image_cache, :remove_image
  before_create :set_permalink
  validates :name, presence: true
  has_many :portfolio_items
  has_many :news
  permalink :name, to_param: %w(id permalink)
  mount_uploader :image, PortfolioUploader

  path = ":rails_root/public/system/:attachment/:id/:style/:basename.:extension"
  url = "/system/:attachment/:id/:style/:basename.:extension"
  has_attached_file :portfolio_image, styles: { medium: "800x600>", thumb: "200x140#" }, url: url, path: path

  def portfolio_item_ids
    portfolio_items.collect{ |item| [item.id, item.id] }
  end

  private
    
    def set_permalink
      self.permalink = Russian.translit(self.name).mb_chars.downcase.gsub(/[^0-9а-яa-z]+/, ' ').strip.gsub(' ', '-').to_s
    end
end
