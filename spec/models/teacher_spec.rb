require 'spec_helper'

describe Teacher do
  describe '.new' do
    it 'creates an instance of Teacher' do
      teacher = Teacher.new
      expect(teacher).to be_an_instance_of(Teacher)
    end
  end

  describe '.create' do
    it 'creates a Teacher record in the db' do
      teacher = Teacher.create(:email=>'bob@gmail.com', :first_name=>'bob',:last_name=>'smith',:password=>'bob',:password_confirmation=>'bob')
      expect(teacher.id).to_not be nil
    end
  end

  describe '#metadata' do
    it 'has Teacher properties' do
      teacher = Teacher.create(:email=>'bob@gmail.com',:first_name=>'bob',:last_name=>'smith',:password=>'bob',:password_confirmation=>'bob')
      expect(teacher.email).to eq 'bob@gmail.com'
      expect(teacher.first_name).to eq 'bob'
      expect(teacher.last_name).to eq 'smith'
    end
  end
end