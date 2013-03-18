module ApplicationHelper
  def login_nav
    if @auth.present?
      "<li>#{link_to("Hi #{@auth.first_name} | Logout", '/login', :method => :delete, :remote => true, :class => 'button tiny alert last_name')}</li>"
    else
      link_to('Login', login_path, :class => 'button tiny success', :remote=>true)
    end
  end
end