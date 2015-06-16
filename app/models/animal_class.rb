class AnimalClass < ActiveRecord::Base
  belongs_to :animal_division
  has_many :animal_subclasses
  has_many :animals

  def children
    animal_subclasses + animals
  end
end
