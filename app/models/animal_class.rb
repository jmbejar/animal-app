class AnimalClass < ActiveRecord::Base
  belongs_to :animal_division
  has_many :animal_subclasses
  has_many :animal_species
end
