class KlassesController < ApplicationController
  def index
    @klasses = @auth.klasses
  end
  def show
    @klass = Klass.find(params[:id])
  end
  def new
    @klass = Klass.new
  end
  def create
    @klass = Klass.create(params[:klass])
    @klass.teacher = @auth
    @klass.save
  end
end