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

require 'spec_helper'

describe Student do
  describe '.new' do
    it 'creates an instance of Student' do
      student = Student.new
      expect(student).to be_an_instance_of(Student)
    end
  end

  describe '.create' do
    it 'creates a Student record in the db' do
      student = Student.create(:first_name=>'jane',:last_name=> 'doe')
      expect(student.id).to_not be nil
    end
  end

  describe '#metadata' do
    it 'has student properties' do
      student = Student.create(:first_name=>'jane',:last_name=>'doe')
      expect(student.first_name).to eq 'jane'
      expect(student.last_name).to eq 'doe'
    end
  end
end
