module GoDuration
  class Parser
    PART_REGEXP = %r{\d+[hms]}.freeze

    def self.parse_part(part)
      case
      when part.end_with?("s") then part.to_i
      when part.end_with?("m") then part.to_i * MINUTE
      when part.end_with?("h") then part.to_i * HOUR
      end
    end

    attr_reader :input

    def initialize(input)
      @input = input
    end

    def seconds
      parts.map { |part| self.class.parse_part(part) }.sum
    end

    def parts
      @parts ||= input.scan(PART_REGEXP)
    end
  end
end
