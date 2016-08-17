require_relative '../../test_helper'

class TestGoDurationVersion < MiniTest::Test
  def test_version
    assert Gem::Version.correct?(GoDuration::VERSION)
  end
end
