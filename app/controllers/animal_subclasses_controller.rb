class AnimalSubclassesController < ApplicationController
  def show
    @subclass = AnimalSubclass.find_by_name(params[:subclass])
  end
end
