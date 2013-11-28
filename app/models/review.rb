class Review < ActiveRecord::Base
  validates_presence_of :name, :body
  default_scope -> { where(:approve => true).order('id DESC') }
end
