class AnimalDivisionsController < ApplicationController
  def index
    @divisions = AnimalDivision.all
  end

  def show
    @division = AnimalDivision.find_by_name(params[:division])
  end
end
