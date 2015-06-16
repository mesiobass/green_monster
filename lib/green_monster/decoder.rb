module GreenMonster
  class Decoder
    # 初期化
    def initialize(schema)
      @schema = schema
    end

    # 変換
    def convert(row)
      attrs = {}
      @schema.attributes.each do |attribute|
        attrs.update(
          attribute.name => attribute.decode(fetch_value(row[attribute.options[:col_num]]))
        )
      end

      attrs
    end

    private
    # 使用するデータを抽出する
    def fetch_value(data)
      data
    end
  end
end

