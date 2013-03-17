class Assessment < ActiveRecord::Base
  attr_accessible :name, :type, :date_completed, :weight, :class_id
  belongs_to :klass
  has_many :grades, :through=> :assessments
end