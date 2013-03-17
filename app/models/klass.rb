# == Schema Information
#
# Table name: klasses
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  period     :integer
#  teacher_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Klass < ActiveRecord::Base
  attr_accessible :name, :period
  belongs_to :teacher
  has_and_belongs_to_many :students
end
