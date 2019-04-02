require 'test/unit'
require_relative '../Completed/16_palindrome.rb'

class PalindromTest < Test::Unit::TestCase
    def test_palindrome
      assert_equal(false, palindrome("hello"))
      assert_equal(true, palindrome("racecar"))
      assert_equal(true, palindrome("Racecar"))
    end
    def test_palindrome2
        assert_equal(false, palindrome("hello"))
      assert_equal(true, palindrome("racecar"))
      assert_equal(true, palindrome("Racecar"))
    end
  end