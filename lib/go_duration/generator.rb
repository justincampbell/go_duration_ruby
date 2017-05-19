module GoDuration
  class Generator
    attr_reader :seconds

    def initialize(seconds)
      @seconds = seconds
    end

    def to_s
      seconds_remaining = seconds

      minutes = seconds_remaining / 60
      seconds_remaining = seconds_remaining % 60

      hours = minutes / 60
      minutes = minutes % 60

      buffer = ""
      buffer.prepend "#{seconds_remaining.to_i}s" if seconds_remaining.nonzero?
      buffer.prepend "#{minutes.to_i}m" if minutes.nonzero?
      buffer.prepend "#{hours.to_i}h" if hours.nonzero?
      buffer = "0s" if buffer == ""
      buffer
    end
  end
end
