class TeachersController < ApplicationController
  def index
  end

  def new
    @teacher = Teacher.new
  end

  def create
     @teacher = Teacher.create(params[:teacher])
    # @teacher = Teacher.new(params[:teacher])
    # if @teacher.save
    #   teacher = Teacher.create
    #   teacher.user = @teacher
    # end
  end

end