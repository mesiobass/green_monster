module GreenMonster
  module Attribute
    class Abstract
      attr_reader :name, :options
      
      # 初期化
      def initialize(name, options = {})
        @name    = name
        @options = options
      end
    end
  end
end
