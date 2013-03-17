# == Schema Information
#
# Table name: teachers
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  first_name      :string(255)
#  last_name       :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Teacher < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation
  has_secure_password
  has_many :klasses
  validates :email, :first_name, :last_name, :presence => true
  validates :email, :uniqueness=>true
end
