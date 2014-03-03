class Portfolio < ActiveRecord::Base

  before_create :set_permalink
  validates :name, presence: true
  has_many :portfolio_items
  has_many :news
  permalink :name, to_param: %w(id permalink)

  mount_uploader :image, PortfolioUploader
  default_scope -> { order('created_at DESC') }

  def portfolio_item_ids
    portfolio_items.collect{ |item| [item.id, item.id] }
  end

  private
    
    def set_permalink
      self.permalink = Russian.translit(self.name).mb_chars.downcase.gsub(/[^0-9а-яa-z]+/, ' ').strip.gsub(' ', '-').to_s
    end
end
