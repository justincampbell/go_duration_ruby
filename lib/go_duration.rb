require 'go_duration/parser'
require 'go_duration/version'

module GoDuration
  SECOND = 1
  MINUTE = SECOND * 60
  HOUR = MINUTE * 60

  def self.parse(input)
    Parser.new(input).seconds
  end
end
