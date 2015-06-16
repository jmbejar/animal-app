class Taxonomy
  class TaxonomyParser
    def parse(block)
      @result = {}
      instance_eval(&block)

      @result
    end

    def method_missing(method, *args, &block)
      if block
        @result[method] = TaxonomyParser.new.parse(block)
      else
        @result[method] = args.map(&:to_s)
      end
    end
  end

  class << self
    def define(&block)
      @data = {}
      instance_eval(&block)
    end

    def to_hash
      @data
    end

    private

    def method_missing(method, &block)
      @data[method] = TaxonomyParser.new.parse(block)
    end
  end
end
