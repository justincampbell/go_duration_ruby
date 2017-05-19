require_relative 'test_helper'

class GoDurationFuzzTest < Minitest::Test
  def test_fuzz
    n = ENV.fetch('FUZZ_N', "1_000").to_i
    test_cases = n.times.map { rand(2**64) }
    test_cases.each do |seconds|
      generated = GoDuration.generate(seconds)
      parsed = GoDuration.parse(generated)
      assert_equal seconds, parsed
    end
  end
end
