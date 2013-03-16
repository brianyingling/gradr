class Grade < ActiveRecord::Base
  attr_accessible :num, :student_id, :assessment_id
  belongs_to :assessment
  belongs_to :student
end