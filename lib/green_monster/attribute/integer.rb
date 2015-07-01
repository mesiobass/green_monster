module GreenMonster
  module Attribute
    class Integer < Reversible
      def decode(value); value.to_i; end
    end
  end
end


