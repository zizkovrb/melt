require 'minitest_helper'
require 'melt'

class TestMelt < Minitest::Test
  def test_it_melt
    # winter
    icicle.freeze
    assert icicle.frozen?, 'Icicle is not frozen!'

    # spring
    icicle.melt
    refute icicle.frozen?, 'Icile is not melted!'
  end

  def test_melted_is_same_object
    oid = icicle.object_id

    # winter
    icicle.freeze
    assert_equal oid, icicle.object_id

    # spring
    icicle.melt
    assert_equal oid, icicle.object_id
  end

  def icicle
    @icicle ||= "----->"
  end
end
