class AnimalDivisionsController < ApplicationController
  def index
    @divisions = AnimalDivision.all
  end

  def show
    @division = AnimalDivision.find(params[:id])
  end
end
