require 'minitest/autorun'
require 'minitest/pride'
require_relative 'compress'

class CompressTest < Minitest::Test

  def test_it_compresses_a_single_letter
    result = compress("a")
    assert_equal "a1", result
  end

  def test_it_compresses_two_of_the_same_letter
    skip
    result = compress("aa")
    assert_equal "a2", result
  end

  def test_if_the_code_is_longer_it_returns_original_string
    skip
    result = compress("ab")
    assert_equal "ab", result
  end

  def test_it_compresses_mulitple_letters
    skip
    result = compress("aaabbccccccc")
    assert_equal "a3b2c7", result
  end

end

