require_relative 'test_helper'
require 'minitest/benchmark'

class GoDurationBench < Minitest::Benchmark
  def bench_generate
    assert_performance_constant 0.99 do |input|
      GoDuration.generate(input)
    end
  end

  def bench_parse
    assert_performance_constant 0.99 do |input|
      GoDuration.parse("#{input}s")
    end
  end
end
