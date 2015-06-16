class Animal
  class << self
    def find(path)
      parts = path.split('/')

      data = taxonomy_data
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

    def taxonomy_data
      Taxonomy.to_hash
    end
  end
end
