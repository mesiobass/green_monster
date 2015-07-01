module GreenMonster
  module Attribute
    class String < Reversible
      def decode(value); value.to_s; end
    end
  end
end
