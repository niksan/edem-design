# encoding: utf-8
class News < ActiveRecord::Base

  belongs_to :portfolio
  before_create :set_permalink
  validates :title, :presence => :true
  permalink :title, :to_param => %w(id permalink)


  private
    
    def set_permalink
      self.permalink = Russian.translit(self.title).mb_chars.downcase.gsub(/[^0-9а-яa-z]+/, ' ').strip.gsub(' ', '-').to_s
    end

end
