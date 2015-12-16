require 'minitest/autorun'
require 'minitest/pride'
require_relative 'taylor_swift_rules'

class AnalyzeSwiftTest < Minitest::Test
  
  def test_reads_in_lyrics_first_line
    path = "lyrics.txt"
    expected = "He"
    assert_equal expected, TSwiftRulez.new(path).input.split.first
  end

  def test_multiple_words
    path = "lyrics.txt"
    expected = ["He", "said", "the", "way", "my", "blue"]
    assert_equal expected, TSwiftRulez.new(path).input.split[0..5]
  end

  def test_if_mike_listens_to_hey_stephen
    path = "lyrics.txt"
    refute TSwiftRulez.new(path).input.split.include?("Stephen")
  end 

  def test_count_words
    path = "lyrics.txt"
    assert_equal 26865, TSwiftRulez.new(path).input.split.count.to_i
  end 

  def test_count_unique_words
    path = "lyrics.txt"
    assert_equal 2913, TSwiftRulez.new(path).sanitize.count
  end 

  def test_eliminates_unimportant_words
    path = "lyrics.txt"
    assert_equal 2904, TSwiftRulez.new(path).delete_extraneous.count
  end 

  def test_how_many_times_t_ruck_is_in_shitty_lyrics
    path = "lyrics.txt"
    assert_equal 11, TSwiftRulez.new(path).count_t_rucks
  end 

  def test_how_many_times_baby
    path = "lyrics.txt"
    assert_equal 69, TSwiftRulez.new(path).count_baby
  end 

end 