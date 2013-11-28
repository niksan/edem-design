class Partner < ActiveRecord::Base
  
  default_scope -> { order('name') }

  path = ":rails_root/public/system/:attachment/:id/:style/:basename.:extension"
  url = "/system/:attachment/:id/:style/:basename.:extension"

  has_attached_file :partner_image, :styles => { :medium => "800x600>", :thumb => "250x250>" }, url: url, path: path

end
