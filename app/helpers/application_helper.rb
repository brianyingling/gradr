module ApplicationHelper
  def login_nav
    if @auth.present?
      "<li>#{link_to(@auth.last_name, '/login', :method => :delete, :remote => true, :class => 'button tiny alert last_name')}</li>"
    end
  end
end