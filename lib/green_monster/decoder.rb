module GreenMonster
  class Decoder
    # 初期化
    def initialize(schema)
      @schema
    end

    # 変換
    def convert(row)
      attrs = {}
      row.first(@schema.size).each_with_index do |data, i|
        attr = @schema[i]
        attrs.update(attr.name => attr.decode(data))
      end

      attrs
    end
  end
end

