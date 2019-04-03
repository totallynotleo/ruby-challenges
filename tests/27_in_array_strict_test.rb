require 'test/unit'
require_relative '../27_in_array_strict'

class InArrayStrictTest < Test::Unit::TestCase
  def test_strict_true
    assert_equal(true, in_array_strict?("Hello", ["hi", "Hello", "howdy"], true))
    assert_equal(false, in_array_strict?("Hello", ["hi", "hello", "howdy"], true))
  end

  def test_strict_false
    assert_equal(true, in_array_strict?("hOwDy", ["hi", "Hello", "howdy"], false))
    assert_equal(true, in_array_strict?("howdy", ["hi", "hello", "hOWDy"], false))
  end 
  
  def test_not_in_array
    assert_equal(false, in_array_strict?("hi", ["hello", "gday" ,"howdy"], true))
    assert_equal(false, in_array_strict?("leowashere", ["hello", "gday" ,"howdy"], false))
  end
end