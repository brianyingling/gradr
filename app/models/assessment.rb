# == Schema Information
#
# Table name: assessments
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  type           :string(255)
#  weight         :integer
#  klass_id       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  date_completed :date
#

class Assessment < ActiveRecord::Base
  attr_accessible :name, :category, :date_completed, :weight, :class_id, :klass_ids
  belongs_to :klass
  has_many :grades

  def average
    if self.grades.present?
      self.grades.map(&:num).reduce(:+) / self.grades.count
    end
  end

end
