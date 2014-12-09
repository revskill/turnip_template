class User < ActiveRecord::Base
  #attr_accessor :email, :password, :password_confirmation
  has_secure_password
  #validates_presence_of :email
  validates :email, :presence => true
  validates :password,  :presence => true,
  						:on => :create,
  						:length => {minimum: 6}
end
