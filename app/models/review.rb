# encoding: utf-8
class Review < ActiveRecord::Base
  validates_presence_of :name, :body
end
