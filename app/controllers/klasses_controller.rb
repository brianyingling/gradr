class KlassesController < ApplicationController
  def index
    @klasses = @auth.klasses
  end
end