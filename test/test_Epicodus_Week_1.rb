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
end
