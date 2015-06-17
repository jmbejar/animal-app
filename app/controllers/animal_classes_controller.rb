class AnimalClassesController < ApplicationController
  def show
    @klass = AnimalClass.find_by_name(params[:class])
  end
end
