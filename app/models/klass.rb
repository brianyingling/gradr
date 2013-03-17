class Klass < ActiveRecord::Base
  attr_accessible :name, :period
  belongs_to :teacher
  has_many :students
end