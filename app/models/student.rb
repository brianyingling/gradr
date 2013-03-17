class Student < ActiveRecord::Base
  attr_accessible :first_name, :last_name
  has_many :grades
  has_and_belongs_to_many :klasses
  has_many :assessments, :through => :grades
end