class AnimalSubclass < ActiveRecord::Base
  belongs_to :animal_class
  has_many :animal_species
end
