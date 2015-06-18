class Animal
  class << self
    def find(path)
      parts = path.split('/')

      children = taxonomy
      current, parent = nil

      parts.each do |part|
        parent = current
        current = part
        children = if children.is_a? Hash
                     children[part.to_sym]
                   else
                     []
                   end
      end

      children = children.keys if children.is_a? Hash

      { current: current, children: children, parent: parent }
    end

    def taxonomy
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
