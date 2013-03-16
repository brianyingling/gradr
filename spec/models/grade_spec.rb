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
      klass = Klass.create(:name=>'US History I', :period=>1)
      grade = Grade.create(:num=>90, :student=>student, :assessment=>assessment, :klass=>klass)
    end
  end


end