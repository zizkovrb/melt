require 'minitest_helper'
require 'melt'

class TestMelt < Minitest::Test
  def test_it_does_something_useful
    icicle = "----->"

    # winter
    icicle.freeze
    assert icicle.frozen?, 'Icicle is not frozen!'

    # spring
    icicle.melt
    refute icicle.frozen?, 'Icile is not melted!'
  end
end
