#coding: utf-8
class Article < ActiveRecord::Base

  belongs_to :portfolio
  has_many :special_offers

  before_create :set_permalink
  validates :title, :presence => :true
  permalink :title, :to_param => %w(id permalink)

  acts_as_nested_set
  scope :published, -> { where(published: true) }
  scope :unpublished, -> { where(published: false) }
  #default_scope -> { where(published: true) }

  def to_label
    self.title
  end

  private
    
    def set_permalink
      self.permalink = Russian.translit(self.title).mb_chars.downcase.gsub(/[^0-9а-яa-z]+/, ' ').strip.gsub(' ', '-').to_s
    end

end
