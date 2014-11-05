class Tag < ActiveRecord::Base

  validates :name, uniqueness: true
  has_and_belongs_to_many :portfolios
  #accepts_nested_attributes_for :portfolios, allow_destroy: true

  before_save :set_slug

  private

    def set_slug
      self.slug = Russian.translit(self.name).mb_chars.downcase.gsub(/[^0-9а-яa-z]+/, ' ').strip.gsub(' ', '_').to_s
    end

end
