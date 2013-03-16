require 'spec_helper'

describe 'Teachers' do
  describe 'GET /' do
    it 'displays register link' do
      visit root_path
      page.should have_link('Register')
    end
  end

  describe 'GET /teachers/new' do
    it 'displays the create teacher and cancel buttons', :js => true do
      visit root_path
      click_link('Register')
      page.should have_link('Cancel')
      page.should have_link('Create Account')
    end
  end
end

  describe 'JS cancel_teacher_form()' do
    it 'it removes the create account form', :js => true do
      visit root_path
      click_link('Register')
      click_button('Cancel')
      page.should_not have_button('Create Account')
    end
  end

  describe 'POST /teachers' do
  it 'creates a new teacher', :js => true do
    visit root_path
    click_link('Register')
    fill_in('last_name', :with => 'Socrates')
    fill_in('Email', :with => 'socrates@gmail.com')
    save_and_open_page
  end
end

describe 'POST /teachers' do
  it 'creates a new teacher', :js => true do
    visit root_path
    click_link('Register')
    fill_in('last_name', :with => 'Socrates')
    fill_in('Email', :with => 'socrates@gmail.com')
    fill_in('teacher_password', :with => 'a')
    fill_in('teacher_password_confirmation', :with => 'a')
    click_button('Create Account')
    expect(Teacher.first.email).to eq 'socrates@gmail.com'
    page.should_not have_button('Create Account')
    page.should have_text('You have successfully created an account.')
  end
end
