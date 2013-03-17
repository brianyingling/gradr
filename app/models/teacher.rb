class Teacher < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation
  has_secure_password
  has_many :klasses
  validates :email, :first_name, :last_name, :presence => true
  validates :email, :uniqueness=>true
end