# encoding: utf-8
class Partner < ActiveRecord::Base

  has_attached_file :partner_image, :styles => { :medium => "800x600>", :thumb => "250x250>" }

end
