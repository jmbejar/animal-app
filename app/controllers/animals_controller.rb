class AnimalsController < ApplicationController
  def index
    path = params[:path] || ''
    animals = Animal.find(path)

    @current_path = 'animals/' + path

    @current = animals[:current]
    @children = animals[:children]

    @parent = path.split('/')[-2] || 'Main Menu'
    @parent_path = (%w(animals) + path.split('/')[0..-2]).join('/')
  end
end
