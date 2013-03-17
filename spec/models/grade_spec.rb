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

require 'spec_helper'


describe Grade do

  describe '.new' do
    it 'creates an instance of Grade' do
      grade = Grade.new
      expect(grade).to be_an_instance_of(Grade)
    end
  end

  describe '.create' do
    it 'creates a Grade record in the db' do
      student = Student.create(:first_name=>'jane',:last_name=> 'doe')
      assessment = Assessment.create(:name=>'Civil War Test', :type=>'test', :weight=>100)
      grade = Grade.create(:num=>90)

    end
  end

  describe '#metadata' do
    it 'has Grade properties and relationships' do
      student = Student.create(:first_name=>'jane',:last_name=> 'doe')
      assessment = Assessment.create(:name=>'Civil War Test', :type=>'test', :weight=>100)
      grade = Grade.create(:num=>90)
      grade.student = student
      grade.assessment = assessment
      grade.save
      expect(grade.id).to_not be nil
      expect(grade.num).to eq 90
      expect(grade.student).to eq student
      expect(grade.assessment).to eq assessment
    end
  end
end
