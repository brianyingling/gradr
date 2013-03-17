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

require 'spec_helper'

describe Klass do
  describe '.new' do
    it 'creates an instance of Klass' do
      klass = Klass.new
      expect(klass).to be_an_instance_of(Klass)
    end
  end

  describe '.create' do
    it 'creates a Klass record in the db' do
      klass = Klass.create(:name=>'US History I', :period=>1)
      expect(klass.id).to_not eq nil
    end
  end

  describe '#metadata' do
    it 'has Klass properties' do
      klass = Klass.create(:name=>'US History I', :period=>1)
      expect(klass.name).to eq 'US History I'
      expect(klass.period).to eq 1
    end
    it 'belongs to a Teacher' do
      teacher = Teacher.create(:email=>'bob@gmail.com', :first_name=>'bob',:last_name=>'smith',:password=>'bob',:password_confirmation=>'bob')
      klass = Klass.create(:name=>'US History I', :period=>1)
      klass.teacher = teacher
      klass.save
      expect(klass.teacher).to eq teacher
    end
  end




end
