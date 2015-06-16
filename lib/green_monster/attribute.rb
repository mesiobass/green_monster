module GreenMonster
  module Attribute
    autoload :Abstract  , 'green_monster/attribute/abstract'
    autoload :Encodable , 'green_monster/attribute/encodable'
    autoload :Decodable , 'green_monster/attribute/decodable'
    autoload :Reversible, 'green_monster/attribute/reversible'
    autoload :Integer   , 'green_monster/attribute/integer'
    autoload :String    , 'green_monster/attribute/string'
    autoload :Date      , 'green_monster/attribute/date'
  end
end
