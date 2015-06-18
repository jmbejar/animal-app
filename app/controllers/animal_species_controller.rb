class AnimalSpeciesController < ApplicationController
  def show
    @specie = AnimalSpecie.find_by_name(params[:specie])
  end
end
