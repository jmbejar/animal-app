class Animal
  class << self
    def find(path)
      parts = path.split('/')

      data = classification
      current, parent = nil

      parts.each do |part|
        parent = current
        current = part
        data = if data.is_a? Hash
                 data[part.to_sym]
               else
                 []
               end
      end

      data = data.keys if data.is_a? Hash

      { current: current, children: data, parent: parent }
    end

    def classification
      {
        vertebrados: {
          mamiferos: {
            carnivoros: %w(gato lince lobo),
            herbivoros: %w(girafa ñu)
          },
          aves: %w(gallina paloma)
        },
        invertebrados: {
          celentereos: %w(medusa coral),
          moluscos: %w(caracol),
          antropodos: {
            insectos: %w(mariposa mosca),
            aracnidos: %w(escorpion araña)
          }
        }
      }
    end
  end
end
