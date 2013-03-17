require 'spec_helper'

describe 'Klasses' do
  describe 'GET /klasses' do
    it 'displays a list of all the teacher\'s classes', :js=>true do
      visit root_path
      login
      click_link('My Classes')
      page.should have_text('My List of Classes')
    end
  end
end



def login
  teacher = Teacher.create(:email=>'bob.smith@gmail.com',:first_name=>'Bob',:last_name=>'Smith',:password=>'bob',:password_confirmation=>'bob')
  visit root_path
  click_link('Register')
  fill_in('teacher_email', :with=>teacher.email)
  fill_in('teacher_first_name', :with=>teacher.first_name)
  fill_in('teacher_last_name', :with=>teacher.last_name)
  fill_in('teacher_password', :with=>teacher.password)
  fill_in('teacher_password_confirmation', :with=>teacher.password_confirmation)
  click_button('Create Account')

  visit root_path
  click_link('Login')
  fill_in('email', :with=>teacher.email)
  fill_in('password', :with=>teacher.password)
  click_button('Login')
  page.should_not have_button('Login')
end
