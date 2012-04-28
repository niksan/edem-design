# encoding: utf-8
class Partner < ActiveRecord::Base

  image_url = "/system/:attachment/:id/:style/:basename.:extension"

  has_attached_file :partner_image, :styles => { :medium => "800x600>", :thumb => "250x250>" }, url: image_url, path: image_url

end
