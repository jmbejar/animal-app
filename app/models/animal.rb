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
      Taxonomy.to_hash
    end
  end
end
