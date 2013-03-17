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

require 'spec_helper'

describe Assessment do
  describe '.new' do
    it 'creates an instance of Assessment' do
      assessment = Assessment.new
      expect(assessment).to be_an_instance_of(Assessment)
    end
  end

  describe '.create' do
    it 'creates an Assessment record in the db' do
      assessment = Assessment.create(:name=>'Civil War Test', :type=>'test', :weight=>100)
      expect(assessment.id).to_not eq nil
    end
  end

  describe '#metadata' do
    it 'has Assessment properties' do
      assessment = Assessment.create(:name=>'Civil War Test', :type=>'test',:weight=>100)
      expect(assessment.name).to eq 'Civil War Test'
      expect(assessment.type).to eq 'test'
      expect(assessment.weight).to eq 100
    end
  end

  describe "#classes" do
    it 'has a class' do
      assessment = Assessment.create(:name=>'Civil War Test', :type=>'test', :weight=>100)
      assessment.klass = Klass.new
      expect(assessment.klass).to be_an_instance_of(Klass)
    end
  end
end
