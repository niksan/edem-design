class Message

  include ActiveModel::Validations
  attr_accessor :name, :phone, :email, :body
  validates_presence_of :name, :phone, :email, :body
  #validates :email, presence: true, format: { with: /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }

end
