module GreenMonster
  class Schema
    attr_reader :attributes, :index_key

    def initialize()
    end

    def attribute(name, type, options = {})
      @attributes ||= []
      @attributes << {name: name, type: type, options: options}
    end

    def key(key)
      @index_key = key
    end
  end
end
