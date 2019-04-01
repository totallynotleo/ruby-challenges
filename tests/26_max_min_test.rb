require 'test/unit'
require_relative '../26_max_min'

class MaxMinTest < Test::Unit::TestCase
  def test_basic_premise
    assert_equal("21 1", max_min("1 2 6 9 21"))
    assert_equal("7 0", max_min("0 1 2 3 4 5 6 7"))
  end
  def test_with_negatives
    assert_equal("21 -9", max_min("1 2 6 -9 21"))
    assert_equal("7 -3", max_min("0 1 2 -3 4 5 6 7"))
  end
end