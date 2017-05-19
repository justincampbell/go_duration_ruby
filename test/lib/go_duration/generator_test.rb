require_relative '../../test_helper'

module GoDuration
  class TestGenerator < MiniTest::Test
    def test_to_s
      assert_equal "0s", Generator.new(0).to_s
      assert_equal "15s", Generator.new(15).to_s
      assert_equal "1m", Generator.new(60).to_s
      assert_equal "2m30s", Generator.new(150).to_s
      assert_equal "3h25m45s", Generator.new(12345).to_s
    end
  end
end
