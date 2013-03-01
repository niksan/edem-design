class RoleUser < ActiveRecord::Base
  attr_accessible :role_id, :user_id
  validates_presence_of :user_id, :role_id
  belongs_to :role
  belongs_to :user
end
