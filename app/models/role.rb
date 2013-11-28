class Role < ActiveRecord::Base
  validates_presence_of :name
  has_many :role_users, dependent: :destroy
  has_many :users, through: :role_users
end
