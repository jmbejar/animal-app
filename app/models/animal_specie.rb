class AnimalSpecie < ActiveRecord::Base
  belongs_to :animal_class
  belongs_to :animal_subclass

  def parent
    animal_subclass || animal_class
  end
end
