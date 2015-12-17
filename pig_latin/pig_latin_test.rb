require_relative 'pig_latin'
require 'minitest/autorun'
require 'minitest/pride'

class PigLatinTest < Minitest::Test

  def test_split_multiple
    p = PigLatin.new
    assert_equal ["cat", "dog"], p.splitter("cat dog")
  end

  def test_split_multiple
    p = PigLatin.new
    assert_equal ["dog"], p.splitter("dog")
  end

  def test_cat_to_at_cay
    p = PigLatin.new
    assert_equal "at-cay", p.latinify_consonant("cat")
  end 

  def test_banana_to_anana_bay
    p = PigLatin.new
    assert_equal "anana-bay", p.latinify_consonant("banana")
  end 

  def test_apple_to_apple_way
    p = PigLatin.new
    assert_equal "apple-way", p.latinify_vowel("apple")
  end

  def test_latinify_apple
    p = PigLatin.new
    assert_equal "apple-way", p.latinify("apple")
  end

  def test_latinify_goodbye
    p = PigLatin.new
    assert_equal "oodbye-gay!", p.latinify("exit!")
  end

  def test_latinify_goodbye
    p = PigLatin.new
    assert_equal "at-cay", p.latinify("cat")
  end

  def test_phrase
    p = PigLatin.new
    assert_equal "at-cay og-day", p.latinify("cat dog")
  end

  def test_vowel_and_consonant_phrase
    p = PigLatin.new
    assert_equal "apple-way og-day", p.latinify("apple dog")
  end

  def test_with_exit
    p = PigLatin.new
    assert_equal "apple-way og-day oodbye-gay!", p.latinify("apple dog exit!") 
  end 

  def test_breaks_on_exit
    p = PigLatin.new
    assert_equal "apple-way og-day oodbye-gay!", p.latinify("apple dog exit!") 
  end 

end

