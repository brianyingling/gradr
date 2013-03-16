class TeachersController < ApplicationController
  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(params[:teacher])
    if @teacher.save
      teacher = Teacher.create
      teacher.user = @teacher
    end
  end
end