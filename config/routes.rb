class AnimalSpecieConstraint
  def matches?(request)
    AnimalSpecie.where(name: request.params[:specie]).exists?
  end
end

class AnimalSubclassConstraint
  def matches?(request)
    AnimalSubclass.where(name: request.params[:subclass]).exists?
  end
end

Rails.application.routes.draw do
  get 'animals', to: 'animal_divisions#index'
  get 'animals/:division', to: 'animal_divisions#show', as: :animal_division
  get 'animals/:division/:class', to: 'animal_classes#show', as: :animal_class
  get 'animals/:division/:class/:subclass', to: 'animal_subclasses#show', as: :animal_subclass, constraints: AnimalSubclassConstraint.new
  get 'animals/:division/:class/:specie', to: 'animal_species#show', as: :specie_from_class, constraints: AnimalSpecieConstraint.new
  get 'animals/:division/:class/:subclass/:specie', to: 'animal_species#show', as: :specie_from_subclass
end
