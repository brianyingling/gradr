class StudentsController < ApplicationController
  def index
  end

  def new
    @student = Student.new
  end

  def create
     @student = Student.create(params[:student])
  end
end