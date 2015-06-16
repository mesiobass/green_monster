module GreenMonster
  class Encoder
    # 初期化
    def initialize(schema)
      @schema = schema
    end

    # 変換
    def convert(model)
      @schema.attributes.map do |attr|
        [attr.name, attr.encode(model.send(attr.name)), attr.options[:col_num]]
      end
    end
  end
end
