class Klass < ActiveRecord::Base
  attr_accessible :name, :period
  belongs_to :teacher
  has_and_belongs_to_many :students
end