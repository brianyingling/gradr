# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ActiveRecord::Base
  attr_accessible :first_name, :last_name
  has_many :grades
  has_and_belongs_to_many :klasses
  has_many :assessments, :through => :grades
end

def progress
  self.grades.sort_by {|g| g.date_completed}
end
