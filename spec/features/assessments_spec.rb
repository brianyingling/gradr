require 'spec_helper'

describe 'Assessments' do
  describe 'GET /assessments' do
    it 'displays a list of all the assessments from a teacher', :js=>true do
      visit root_path
      register
      login
      click_link('My Assignments')
      page.should have_text('My List of Assignments')
    end
  end

  describe 'GET /assessments/:id' do
    it 'displays data from a particular assignment', :js=>true do
      visit root_path
      #login
      click_link('My Assignments')
      click_link('American History Mid-Term')
      page.should have_text('American History Mid-Term')
      page.should_not have_text('My List of Assignments')
    end
  end
end







def register
  # teacher = Teacher.create(:email=>'bob.smith@gmail.com',:first_name=>'Bob',:last_name=>'Smith',:password=>'bob',:password_confirmation=>'bob')
  # visit root_path
  click_link('Register')
  fill_in('teacher_email', :with=>'bob.smith@gmail.com')
  fill_in('teacher_first_name', :with=>'bob')
  fill_in('teacher_last_name', :with=>'smith')
  fill_in('teacher_password', :with=>'bob')
  fill_in('teacher_password_confirmation', :with=>'bob')
  click_button('Create Account')
end

def login
  # teacher = Teacher.create(:email=>'bob.smith@gmail.com',:first_name=>'Bob',:last_name=>'Smith',:password=>'bob',:password_confirmation=>'bob')
  klass = Klass.create(:name=>'American History',:period=>1)
  # teacher.klasses << klass
  visit root_path
  click_link('Login')
  fill_in('email', :with=>'bob@gmail.com')
  fill_in('password', :with=>'bob')
  click_button('Log In')
  page.should_not have_button('Log In')
end
