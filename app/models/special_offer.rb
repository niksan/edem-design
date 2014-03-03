class SpecialOffer < ActiveRecord::Base

  validate :name, presence: true
  belongs_to :article
  
  mount_uploader :image, SpecialOfferUploader
  default_scope -> { order('public') }

end
