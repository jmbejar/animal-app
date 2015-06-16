require 'taxonomy'

Taxonomy.define do
  vertebrados do
    mamiferos do
      carnivoros :gato, :lince, :lobo
      herbivoros :girafa, :ñu
    end

    aves :gallina, :paloma
  end

  invertebrados do
    celentereos :medusa, :coral
    moluscos :caracol
    antropodos do
      insectos :mariposa, :mosca
      aracnidos :escorpion, :araña
    end
  end
end
