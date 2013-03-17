class Student < ActiveRecord::Base
  attr_accessible :first_name, :last_name
  has_many :grades
  has_many :klasses
  has_many :assessments, :through => :grades
end