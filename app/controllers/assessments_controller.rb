class AssessmentsController < ApplicationController
  def index
    @klasses = @auth.klasses
  end
end