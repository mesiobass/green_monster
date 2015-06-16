require "green_monster/decoder"
require "green_monster/encoder"
require "green_monster/value_ruby_xl"

module GreenMonster
  module ActiveRecordExtension
    module RubyXLConverter
      extend ActiveSupport::Concern

      included do
        class << self
          attr_reader :schema

          # スキーマ定義
          def schema_is
            @schema = Schema.new
            yield(@schema)
          end

          # 外部ファイルから読み込んだ内容でオブジェクトを生成
          def find_or_build_from_row(row)
            attrs = Decoder.new(self.schema)
              .extend(ValueRubyXL)
              .convert(row)

            obj = self.find_by("#{self.schema.index_key}": attrs[self.schema.index_key]) || self.new
            obj.assign_attributes(attrs)

            obj
          end
        end

        # 外部ファイル用にモデルデータを変換
        def to_row
          Encoder.new(self.class.schema).convert(self)
        end

      end
    end
  end
end
