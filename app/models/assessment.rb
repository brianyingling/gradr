class Assessment < ActiveRecord::Base
  attr_accessible :name, :type, :weight, :class_id
end