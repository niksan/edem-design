class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  has_many :role_users
  has_many :roles, through: :role_users
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role_ids

  def role?(role)
    !!self.roles.find_by_name(role.to_s.downcase)
  end

end
