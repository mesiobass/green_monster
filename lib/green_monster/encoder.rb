module GreenMonster
  class Encoder
    # 初期化
    def initialize(schema)
      @schema
    end

    # 変換
    def convert(model)
      @schema.map.with_index do |attr, i|
        [attr.name, attr.encode(model.send(attr.name))]
      end
    end
  end
end
