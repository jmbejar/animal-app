class AnimalsController < ApplicationController
  def show
    @animal = Animal.find_by_name(params[:animal])
  end
end
