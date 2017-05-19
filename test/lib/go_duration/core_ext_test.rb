require_relative '../../test_helper'

require 'go_duration/core_ext'

module GoDuration
  class TestCoreExt < MiniTest::Test
    def test_float
      assert_equal "3h25m45s", 12345.0.to_go_duration
    end

    def test_integer
      assert_equal "3h25m45s", 12345.to_go_duration
    end
  end
end
