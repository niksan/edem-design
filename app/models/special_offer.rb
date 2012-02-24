class SpecialOffer < ActiveRecord::Base

  belongs_to :article
  
  has_attached_file :special_image, :styles => { :medium => "800x600>", :thumb => "258x350>" }

end
