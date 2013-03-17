# == Schema Information
#
# Table name: grades
#
#  id            :integer          not null, primary key
#  num           :integer
#  student_id    :integer
#  assessment_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Grade < ActiveRecord::Base
  attr_accessible :num, :student_id, :assessment_id
  belongs_to :assessment
  belongs_to :student
end
