module GreenMonster
  module Attribute
    class Reversible < Abstract
      include Encodable
      include Decodable
    end
  end
end
