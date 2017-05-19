require 'go_duration/version'

module GoDuration
  SECOND = 1
  MINUTE = SECOND * 60
  HOUR = MINUTE * 60

  PART_REGEXP = %r{\d+[hms]}

  def self.parse(serialized)
    parts = scan(serialized)
    parts.map { |part| parse_part(part) }.sum
  end

  def self.parse_part(part)
    case
    when part.end_with?("s") then part.to_i
    when part.end_with?("m") then part.to_i * MINUTE
    when part.end_with?("h") then part.to_i * HOUR
    end
  end

  def self.scan(serialized)
    serialized.scan(PART_REGEXP)
  end
end
