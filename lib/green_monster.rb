require "active_support/concern"
require "green_monster/version"
require "green_monster/schema"

module GreenMonster
  extend ActiveSupport::Concern

  included do
    class << self
      attr_reader :green_schema

      def schema_is
        @green_schema = Schema.new
        yield(@green_schema)
      end
    end

    def from_row
    end

    def to_row
    end
  end
end
