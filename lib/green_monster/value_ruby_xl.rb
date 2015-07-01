module GreenMonster
  module ValueRubyXL
    def fetch_value(data)
      data.try(:value)
    end
  end
end
