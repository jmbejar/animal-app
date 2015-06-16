class AnimalSubclassesController < ApplicationController
  def show
    @subclass = AnimalSubclass.find(params[:id])
  end
end
