class HomeController < ApplicationController
  def index
  end

  def show_chart
    @students = Student.all
    @klasses = Klass.all
    @assesssments = Assessment.all
    @grades = Grade.all
    render :chart
  end
end