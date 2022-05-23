# frozen_string_literal: true

require "test_helper"

class TestEpicodusWeek1 < Minitest::Test
  # Monday
  def test_ping_pong
    assert pingPong(15) == [1,2,"ping",4,"pong","ping",7,8,"ping","pong",11,"ping",13,14,"ping-pong"]
  end

  def test_title_case
    assert_equal "All For One!", "alL fOr One!".titlecase
  end

  def test_leetspeak
    # test for all but "s"
    assert_equal "1f 1 di3, d0n't y0u cry.", "If I die, don't you cry.".leetspeak
    # remaining test for "s"
    assert_equal "My spid3r s3nz3z ar3 tingling.", "My spider senses are tingling.".leetspeak
  end

  def test_queen_attack
    # Test false case
    refute [1,1].queen_attack?([2,3])
    # Test horizontal case
    assert [1,1].queen_attack?([1,3])
    # Test vertical case
    assert [1,1].queen_attack?([2,1])
    # Test diagonal case
    assert [1,2].queen_attack?([3,4])
  end

  def test_clock_angle
    assert_equal 0, "12:00".clock_angle
    assert_equal 180, "6:00".clock_angle
    assert_equal 127.5, "7:15".clock_angle
  end
  
  # Tuesday
  def test_scrabble
    assert_equal 1, "a".scrabble
    assert_equal 14, "scrabble".scrabble
  end

  def test_numbers_to_words
    assert_equal "one hundred twenty three million, four hundred fifty six thousand, seven hundred eighty nine", 123456789.to_words
    assert_equal "one thousand, two hundred thirty four", 1234.to_words
  end

  # Wednesday
  def test_rock_paper_scissors
    game = RPS.new()
    assert game.wins?("Rock", "scissors")
    refute game.wins?("scissors", "scissors")
    refute game.wins?("rock", "PaPer")
  end
  
  def test_find_and_replace
    assert_equal "Hello universe", "Hello world".find_and_replace("world", "universe")
    assert_equal "I am walking my dog to the cathedral", "I am walking my cat to the cathedral".find_and_replace("cat", "dog")
  end

  def test_palindrome
    assert "Racecar".palindrome?
    refute "Butterfly".palindrome?
    assert 12321.palindrome?
    assert "A man, a plan, a canal—Panama!".palindrome?
  end

  # Thursday
  def test_coin_combinations
    assert_equal "5 quarters, 1 nickel, 4 pennies", 134.make_change
    assert_equal "10 quarters, 2 dimes, 3 pennies", 273.make_change
  end

  def test_prime_sift
    assert_equal [2, 3, 5, 7, 11], 11.prime_sift
    assert_equal [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97], 100.prime_sift
  end

  def test_allergies
    assert_equal ["eggs", "peanuts", "shellfish"], 7.list_allergens
    assert_equal ["eggs", "shellfish", "cats"], 133.list_allergens
  end
end
