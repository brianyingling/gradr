class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
     @student = Student.create(params[:student])
     @students = Student.all
  end

  def edit
    @student = Student.find(params[:id])
    render :new
  end


  def update
    student = Student.find(params[:id])
    student.update_attributes(params[:student])
    @students = Student.all
  end

  def destroy
    student = Student.find(params[:id])
    student.delete
    @students = Student.all
    render :index
  end
end