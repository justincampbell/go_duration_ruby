module GoDuration
  module CoreExt
    module Numeric
      def to_go_duration
        GoDuration.generate(self)
      end
    end
  end
end

Numeric.include GoDuration::CoreExt::Numeric
