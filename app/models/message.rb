class Message

  include ActiveModel::Validations
  attr_accessor :name, :phone, :email, :body
  validates_presence_of :name, :phone, :email, :body

end
