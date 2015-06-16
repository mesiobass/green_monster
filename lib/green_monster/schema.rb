module GreenMonster
  class Schema
    attr_reader :attributes, :index_key

    def initialize()
    end

    def attribute(name, type, options = {})
      @attributes    ||= []
      @column_number ||= 0

      if options[:col_num].present?
        @column_number = options[:col_num]
      else
        options.update(col_num: @column_number)
      end
      @column_number += 1

      @attributes << type.new(name, options)
    end

    def key(key)
      @index_key = key
    end
  end
end
