require 'spec_helper'

describe 'Klasses' do
  describe 'GET /klasses' do
    it 'displays a list of all the teacher\'s classes', :js=>true do
      visit root_path
      register
      login
      click_link('My Classes')
      page.should have_text('My List of Classes')
    end
  end

  describe 'GET /klasses/:id' do
    it 'displays a class\'s info and the number of students', :js=>true do
      visit root_path
      login
      klass = Klass.create(:name=>'American History',:period=>1)
      teacher = Teacher.create(:email=>'bob.smith@gmail.com',:first_name=>'Bob',:last_name=>'Smith',:password=>'bob',:password_confirmation=>'bob')
      teacher.klasses << klass
      visit root_path
      click_link('Login')
      fill_in('email', :with=>teacher.email)
      fill_in('password', :with=>teacher.password)
      click_button('Log In')
      page.should_not have_button('Log In')
      page.find_link('Register').visible?.should be_false
      click_link('My Classes')
      page.should have_link('American History')
      click_link('American History')
      page.should have_text('Roster')
      page.should have_text('Assessments')

    end
  end


end

def register
  teacher = Teacher.create(:email=>'bob.smith@gmail.com',:first_name=>'Bob',:last_name=>'Smith',:password=>'bob',:password_confirmation=>'bob')
  visit root_path
  click_link('Register')
  fill_in('teacher_email', :with=>teacher.email)
  fill_in('teacher_first_name', :with=>teacher.first_name)
  fill_in('teacher_last_name', :with=>teacher.last_name)
  fill_in('teacher_password', :with=>teacher.password)
  fill_in('teacher_password_confirmation', :with=>teacher.password_confirmation)
  click_button('Create Account')
end

def login
  teacher = Teacher.create(:email=>'bob.smith@gmail.com',:first_name=>'Bob',:last_name=>'Smith',:password=>'bob',:password_confirmation=>'bob')
  klass = Klass.create(:name=>'American History',:period=>1)
  teacher.klasses << klass
  visit root_path
  click_link('Login')
  fill_in('email', :with=>teacher.email)
  fill_in('password', :with=>teacher.password)
  click_button('Log In')
  page.should_not have_button('Log In')
end
