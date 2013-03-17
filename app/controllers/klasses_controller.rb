class KlassesController < ApplicationController
  def index
    @klasses = @auth.klasses
  end
  def show
    @klass = Klass.find(params[:id])
  end
end