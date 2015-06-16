class AnimalClassesController < ApplicationController
  def show
    @klass = AnimalClass.find(params[:id])
  end
end
