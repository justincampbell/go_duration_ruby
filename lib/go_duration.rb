require 'go_duration/generator'
require 'go_duration/parser'
require 'go_duration/version'

module GoDuration
  SECOND = 1
  MINUTE = SECOND * 60
  HOUR = MINUTE * 60

  SECOND_SUFFIX = ?s.freeze
  MINUTE_SUFFIX = ?m.freeze
  HOUR_SUFFIX = ?h.freeze

  def self.generate(seconds)
    Generator.new(seconds).to_s
  end

  def self.parse(input)
    Parser.new(input).seconds
  end
end
