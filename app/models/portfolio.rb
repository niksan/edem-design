# encoding: utf-8
class Portfolio < ActiveRecord::Base

  before_create :set_permalink
  validates :name, :presence => :true
  has_many :portfolio_items
  has_many :news
  permalink :name, :to_param => %w(id permalink)

  has_attached_file :portfolio_image, :styles => { :medium => "800x600>", :thumb => "200x140#" }

  private
    
    def set_permalink
      self.permalink = Russian.translit(self.name).mb_chars.downcase.gsub(/[^0-9а-яa-z]+/, ' ').strip.gsub(' ', '-').to_s
    end
end
