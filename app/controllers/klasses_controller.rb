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
end