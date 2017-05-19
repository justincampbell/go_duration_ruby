require_relative '../../test_helper'

module GoDuration
  class TestParser < MiniTest::Test
    def test_constants_frozen
      assert Parser::PART_REGEXP.frozen?
    end

    def test_parse_part_seconds
      assert_equal 0, Parser.parse_part("0s")
      assert_equal 15, Parser.parse_part("15s")
      assert_equal 60, Parser.parse_part("60s")
    end

    def test_parse_part_minutes
      assert_equal 0, Parser.parse_part("0m")
      assert_equal 15 * MINUTE, Parser.parse_part("15m")
      assert_equal 60 * MINUTE, Parser.parse_part("60m")
    end

    def test_parse_part_hours
      assert_equal 0, Parser.parse_part("0h")
      assert_equal 15 * HOUR, Parser.parse_part("15h")
      assert_equal 60 * HOUR, Parser.parse_part("60h")
    end

    def test_seconds
      assert_equal 0, Parser.new("0s").seconds
      assert_equal 30, Parser.new("30s").seconds
      assert_equal 150, Parser.new("2m30s").seconds
      assert_equal 360120, Parser.new("100h2m").seconds
      assert_equal 360150, Parser.new("100h2m30s").seconds
    end

    def test_parts
      assert_equal ["0s"], Parser.new("0s").parts
      assert_equal ["30s"], Parser.new("30s").parts
      assert_equal ["2m", "30s"], Parser.new("2m30s").parts
      assert_equal ["100h", "2m"], Parser.new("100h2m").parts
      assert_equal ["100h", "2m", "30s"], Parser.new("100h2m30s").parts
    end
  end
end
