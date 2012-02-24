# encoding: utf-8
class Review < ActiveRecord::Base
  validates :name, :presence => true
  validates :body, :presence => true
end
