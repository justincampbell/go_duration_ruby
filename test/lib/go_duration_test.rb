require_relative '../test_helper'

class TestGoDuration < MiniTest::Test
  def setup
    @parse_cases = {
      "0s" => 0,
      "15s" => 15,
      "1m" => 60,
    }
  end

  def test_parse
    @parse_cases.each do |serialized, duration|
      assert_equal duration, GoDuration.parse(serialized)
    end
  end

  def test_parse_part_seconds
    assert_equal 0, GoDuration.parse_part("0s")
    assert_equal 15, GoDuration.parse_part("15s")
    assert_equal 60, GoDuration.parse_part("60s")
  end

  def test_parse_part_minutes
    assert_equal 0, GoDuration.parse_part("0m")
    assert_equal 900, GoDuration.parse_part("15m")
    assert_equal 3600, GoDuration.parse_part("60m")
  end

  def test_parse_part_hours
    assert_equal 0, GoDuration.parse_part("0h")
    assert_equal 15 * GoDuration::HOUR, GoDuration.parse_part("15h")
    assert_equal 60 * GoDuration::HOUR, GoDuration.parse_part("60h")
  end

  def test_scan
    assert_equal ["100h", "2m", "30s"], GoDuration.scan("100h2m30s")
  end
end
