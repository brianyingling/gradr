class AssessmentsController < ApplicationController
  def index
    @klasses = @auth.klasses
  end
  def new
    @assessment = Assessment.new
    @klasses = @auth.klasses
  end
  def create
    klass_ids = params[:klass][:klass_ids]
    klass_ids.each do |klass_id|
      @assessment = Assessment.create(params[:assessment])
      klass = Klass.find(klass_id)
      @assessment.klass = klass
      @assessment.save
    end
  end
  def show
    @assessment = Assessment.find(params[:id])
  end



end