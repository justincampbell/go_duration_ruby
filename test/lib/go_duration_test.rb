require_relative '../test_helper'

class TestGoDuration < MiniTest::Test
  def setup
    @parse_cases = {
      "0s" => 0,
      "15s" => 15,
      "1m" => 60,
      "2m30s" => 150,
      "1h2m30s" => 3750
    }
  end

  def test_constants_frozen
    assert GoDuration::SECOND_SUFFIX.frozen?
    assert GoDuration::MINUTE_SUFFIX.frozen?
    assert GoDuration::HOUR_SUFFIX.frozen?
  end

  def test_parse
    @parse_cases.each do |serialized, duration|
      assert_equal duration, GoDuration.parse(serialized), serialized
    end
  end
end
