class SessionController < ApplicationController
  def new
  end

  def create
    @auth = Teacher.where(:email => params[:email]).first
    if @auth.present? && @auth.authenticate(params[:password])
      session[:teacher_id] = @auth.id
    else
      session[:teacher_id] = nil
    end
  end
end