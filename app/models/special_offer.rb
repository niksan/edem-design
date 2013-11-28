class SpecialOffer < ActiveRecord::Base

  validate :name, presence: true
  belongs_to :article
  
  image_url = "/system/:attachment/:id/:style/:basename.:extension"
  image_path = ":rails_root/public/system/:attachment/:id/:style/:basename.:extension"

  has_attached_file :special_image, styles: { medium: "800x600>", thumb: "258x350>" }, url: image_url, path: image_path

  default_scope -> { order('public') }

end
